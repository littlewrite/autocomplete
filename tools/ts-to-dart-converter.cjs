#!/usr/bin/env node

/**
 * TypeScript to Dart Batch Converter
 *
 * 功能：
 * - 批量转换 ./src/ 下的 TypeScript 文件为 Dart
 * - 保持目录结构映射到 ./dart/lib/specs/
 * - 支持断点续传
 * - 记录进度和错误日志
 * - 多进程加速：-j N 或 --jobs N（例如 -j4 使用 4 个子进程，真正并行、大文件不卡住）
 * - 可选 Redis：--redis 使用 Redis 队列交换任务与结果（需安装 redis 包并启动 Redis）
 */

const fs = require("fs");
const path = require("path");
const { spawn, execSync } = require("child_process");
const readline = require("readline");

// 解析 -j / --jobs（并行数，默认 1）
function parseJobsArg() {
  const argv = process.argv.slice(2);
  for (let i = 0; i < argv.length; i++) {
    if (argv[i] === "-j" || argv[i] === "--jobs") {
      const n = parseInt(argv[i + 1], 10);
      if (!isNaN(n) && n >= 1) return Math.min(n, 32);
      return 1;
    }
    const m = argv[i].match(/^-j(\d+)$/);
    if (m) return Math.min(parseInt(m[1], 10), 32) || 1;
  }
  return 1;
}

function parseRedisArg() {
  return process.argv.includes("--redis");
}

// ============ 配置区 ============
const CONFIG = {
  srcDir: path.resolve(__dirname, "../src"),
  outputDir: path.resolve(__dirname, "../dart/lib/specs"),
  progressFile: path.resolve(__dirname, "./conversion-progress.json"),
  errorLogFile: path.resolve(__dirname, "./conversion-errors.log"),
  // 是否使用 AI API（如果为 false，使用模板转换）
  useAI: process.env.USE_AI_API === "true",
  // 批处理大小
  batchSize: 10,
  // 并行进程数（由 -j/--jobs 控制，多进程时每个进程独立 CPU，大文件不卡住）
  jobs: parseJobsArg(),
  // 是否使用 Redis 队列（--redis）
  useRedis: parseRedisArg(),
  workerScript: path.join(__dirname, "converter-worker.cjs"),
};

// ============ 进度管理 ============
class ProgressTracker {
  constructor(filePath) {
    this.filePath = filePath;
    this.data = this.load();
  }

  load() {
    if (fs.existsSync(this.filePath)) {
      return JSON.parse(fs.readFileSync(this.filePath, "utf8"));
    }
    return {
      completed: [],
      failed: [],
      needsManual: [], // 需要手动转换的复杂文件
      total: 0,
      startTime: new Date().toISOString(),
    };
  }

  save() {
    fs.writeFileSync(this.filePath, JSON.stringify(this.data, null, 2));
  }

  markCompleted(file) {
    if (!this.data.completed.includes(file)) {
      this.data.completed.push(file);
      this.save();
    }
  }

  markFailed(file, error) {
    const failedEntry = { file, error, timestamp: new Date().toISOString() };
    this.data.failed.push(failedEntry);
    this.save();

    // 同时写入错误日志
    const logEntry = `[${failedEntry.timestamp}] ${file}\n  Error: ${error}\n\n`;
    fs.appendFileSync(CONFIG.errorLogFile, logEntry);
  }

  markNeedsManual(file, warnings) {
    const manualEntry = {
      file,
      warnings,
      timestamp: new Date().toISOString(),
      reason: "Contains complex types (generators, functions, etc.)",
    };
    this.data.needsManual.push(manualEntry);
    this.save();

    // 写入单独的日志
    const logEntry =
      `[${manualEntry.timestamp}] 🔧 NEEDS MANUAL CONVERSION: ${file}\n` +
      `  Reason: ${manualEntry.reason}\n` +
      `  Warnings:\n${warnings.map((w) => `    - ${w}`).join("\n")}\n\n`;
    fs.appendFileSync(CONFIG.errorLogFile, logEntry);
  }

  isCompleted(file) {
    return this.data.completed.includes(file);
  }

  getStats() {
    const processed =
      this.data.completed.length +
      this.data.failed.length +
      (this.data.needsManual?.length || 0);
    return {
      total: this.data.total,
      completed: this.data.completed.length,
      failed: this.data.failed.length,
      needsManual: this.data.needsManual?.length || 0,
      remaining: this.data.total - processed,
      progress:
        ((this.data.completed.length / this.data.total) * 100).toFixed(2) + "%",
    };
  }
}

// ============ 文件扫描 ============
function getAllTsFiles(dir, fileList = []) {
  const files = fs.readdirSync(dir);

  files.forEach((file) => {
    const filePath = path.join(dir, file);
    const stat = fs.statSync(filePath);

    if (stat.isDirectory()) {
      getAllTsFiles(filePath, fileList);
    } else if (file.endsWith(".ts") && !file.endsWith(".d.ts")) {
      fileList.push(filePath);
    }
  });

  return fileList;
}

// ============ 路径映射 ============
function getTsDartPathMapping(tsFilePath) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
  const dartPath = path.join(
    CONFIG.outputDir,
    relativePath.replace(/\.ts$/, ".dart")
  );
  return dartPath;
}

/**
 * 若已存在的 .dart 文件首行是 // AI-generated，表示 AI 或人工编辑过，不覆盖。
 * 仅当首行为 // Auto-generated（脚本生成）或文件不存在时，才允许写入。
 */
function shouldSkipOverwrite(dartPath) {
  if (!fs.existsSync(dartPath)) return false;
  const content = fs.readFileSync(dartPath, "utf8");
  const firstLine = content.split("\n")[0].trim();
  return firstLine.startsWith("// AI-generated");
}

// ============ 模板转换器 ============
const { convertTsToDart } = require("./converter-engine.cjs");

function convertTsToDartTemplate(tsCode, tsFilePath) {
  /**
   * 使用智能转换引擎
   */
  try {
    return convertTsToDart(tsFilePath, tsCode);
  } catch (error) {
    // 如果是复杂文件，重新抛出错误让上层处理
    if (error.isComplexFile) {
      throw error;
    }
    // 其他错误使用回退方案
    console.warn(
      `  ⚠️  Smart conversion failed, using fallback: ${error.message}`
    );
    return convertTsToDartFallback(tsCode, tsFilePath);
  }
}

function convertTsToDartFallback(tsCode, tsFilePath) {
  /**
   * 回退方案：基于简单规则的转换
   */

  let dartCode = "";

  // 1. 添加头部
  const fileName = path.basename(tsFilePath);
  const today = new Date().toISOString().split("T")[0];

  dartCode += `// Auto-generated from ${fileName}
// Generated at: ${today}

import 'package:autocomplete/src/spec.dart';

`;

  // 2. 简单替换（非常基础的版本）
  dartCode += "// TODO: Manual conversion needed\n";
  dartCode += "// Original TypeScript code preserved as comments:\n";
  dartCode += tsCode
    .split("\n")
    .map((line) => "// " + line)
    .join("\n");

  return dartCode;
}

// ============ AI 转换器 ============
async function convertTsToDartAI(tsCode, tsFilePath) {
  /**
   * 使用 AI API 进行转换
   * 需要配置 ANTHROPIC_API_KEY 环境变量
   */

  console.log(`  [AI] Converting with AI API...`);

  // 这里应该调用 Claude API
  // 为了演示，返回模板转换结果
  throw new Error(
    "AI conversion not implemented yet. Please set USE_AI_API=false"
  );
}

/**
 * 单文件转换（不写进度），供并行时使用。返回结果对象，由调用方统一写进度，避免并发写冲突。
 * @returns {{ relativePath: string, success: boolean, isManual?: boolean, error?: string, warnings?: string[] }}
 */
async function doConvertOne(tsFilePath) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
  const dartPath = getTsDartPathMapping(tsFilePath);
  if (shouldSkipOverwrite(dartPath)) {
    return { relativePath, success: true, skipped: true };
  }

  try {
    const tsCode = fs.readFileSync(tsFilePath, "utf8");

    let dartCode;
    if (CONFIG.useAI) {
      dartCode = await convertTsToDartAI(tsCode, tsFilePath);
    } else {
      dartCode = convertTsToDartTemplate(tsCode, tsFilePath);
    }

    const dartDir = path.dirname(dartPath);

    if (!fs.existsSync(dartDir)) {
      fs.mkdirSync(dartDir, { recursive: true });
    }

    fs.writeFileSync(dartPath, dartCode, "utf8");

    return { relativePath, success: true };
  } catch (error) {
    if (error.isComplexFile) {
      return {
        relativePath,
        success: false,
        isManual: true,
        warnings: error.warnings || [],
      };
    }
    return { relativePath, success: false, error: error.message };
  }
}

/** 把 doConvertOne 的结果写回进度（单线程调用，避免冲突） */
function applyProgress(progress, result) {
  if (result.success) {
    progress.markCompleted(result.relativePath);
  } else if (result.isManual) {
    progress.markNeedsManual(result.relativePath, result.warnings || []);
  } else {
    progress.markFailed(result.relativePath, result.error || "Unknown error");
  }
}

// ============ 主转换函数（含进度写入，供单线程或外部调用） ============
async function convertFile(tsFilePath, progress) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);

  if (progress.isCompleted(relativePath)) {
    console.log(`⏭️  Skipping (already done): ${relativePath}`);
    return true;
  }

  console.log(`🔄 Converting: ${relativePath}`);

  const result = await doConvertOne(tsFilePath);

  if (result.skipped) {
    console.log(`⏭️  Skipping (AI-generated or manual): ${relativePath}`);
  } else if (result.success) {
    console.log(
      `✅ Success: ${relativePath} → ${path.relative(process.cwd(), getTsDartPathMapping(tsFilePath))}`
    );
  } else if (result.isManual) {
    console.log(`🔧 Needs manual conversion: ${relativePath}`);
    if (result.warnings && result.warnings.length) {
      result.warnings.forEach((w) => console.log(`     - ${w}`));
    }
  } else {
    console.error(`❌ Failed: ${relativePath}`);
    console.error(`   Error: ${result.error}`);
  }

  applyProgress(progress, result);
  return result.success;
}

// ============ 批量处理 ============
async function batchConvert(files, progress) {
  const jobs = CONFIG.jobs || 1;

  if (jobs <= 1) {
    let successCount = 0;
    let failCount = 0;
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      console.log(`\n[${i + 1}/${files.length}]`);
      const success = await convertFile(file, progress);
      if (success) successCount++;
      else failCount++;
      if ((i + 1) % 10 === 0) {
        const stats = progress.getStats();
        console.log(
          `\n📊 Progress: ${stats.completed}/${stats.total} (${stats.progress})`
        );
      }
    }
    return { successCount, failCount };
  }

  // 多进程并行：每个 worker 为独立进程，大文件转换不会卡住主进程或其他 worker
  if (CONFIG.useRedis) {
    return await batchConvertWithRedis(files, progress);
  }
  return await batchConvertWithProcesses(files, progress, jobs);
}

// 单任务超时时间（毫秒），防止大文件或异常文件卡死 worker
const TASK_TIMEOUT_MS = 10 * 60 * 1000; // 10 分钟

/**
 * 多进程模式：spawn N 个子进程，通过 stdin/stdout 派发任务、收集结果
 * - 跟踪每个 worker 的当前任务，worker 异常退出时重新入队，避免任务丢失
 * - 收齐 files.length 个结果即结束，不依赖所有 worker 退出，避免卡死
 * - 单任务超时后 kill 该 worker，任务重新入队由其他 worker 重试
 */
async function batchConvertWithProcesses(files, progress, jobs) {
  const workerCount = Math.min(jobs, files.length);
  const queue = files.slice();
  const results = [];
  let completed = 0;
  const logLock = { busy: false };
  const log = (msg) => {
    if (logLock.busy) return;
    logLock.busy = true;
    process.stdout.write(msg + "\n");
    logLock.busy = false;
  };

  const env = {
    ...process.env,
    TS2DART_SRC_DIR: CONFIG.srcDir,
    TS2DART_OUTPUT_DIR: CONFIG.outputDir,
    USE_AI_API: CONFIG.useAI ? "true" : "",
  };

  // 每个 worker 当前正在处理的文件（用于异常退出时 re-queue 和超时 kill）
  const workerCurrentFilePath = Array(workerCount).fill(null);
  const workerTimeoutHandle = Array(workerCount).fill(null);

  function clearWorkerTask(workerIndex) {
    if (workerTimeoutHandle[workerIndex]) {
      clearTimeout(workerTimeoutHandle[workerIndex]);
      workerTimeoutHandle[workerIndex] = null;
    }
    workerCurrentFilePath[workerIndex] = null;
  }

  function assignNext(workerIndex, child, rl) {
    if (queue.length === 0) {
      clearWorkerTask(workerIndex);
      try {
        child.stdin.write(JSON.stringify({ exit: true }) + "\n");
      } catch (_) {}
      child.stdin.end();
      return;
    }
    const tsFilePath = queue.shift();
    const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
    workerCurrentFilePath[workerIndex] = tsFilePath;
    log(`🔄 [worker ${workerIndex + 1}] Converting: ${relativePath}`);
    try {
      child.stdin.write(JSON.stringify({ tsFilePath }) + "\n");
    } catch (e) {
      log(`❌ Worker ${workerIndex + 1} stdin error: ${e.message}`);
      queue.unshift(tsFilePath);
      clearWorkerTask(workerIndex);
      return;
    }
    workerTimeoutHandle[workerIndex] = setTimeout(() => {
      log(
        `⏱️ [worker ${workerIndex + 1}] Timeout (${TASK_TIMEOUT_MS / 60000}min): ${relativePath}, killing and re-queuing`
      );
      workerTimeoutHandle[workerIndex] = null;
      queue.push(tsFilePath);
      workerCurrentFilePath[workerIndex] = null;
      try {
        child.kill("SIGTERM");
      } catch (_) {}
    }, TASK_TIMEOUT_MS);
  }

  await new Promise((resolve, reject) => {
    let running = workerCount;
    let resolved = false;
    const workers = [];

    function maybeDone() {
      if (resolved) return;
      if (results.length === files.length) {
        resolved = true;
        workers.forEach((w, idx) => {
          clearWorkerTask(idx);
          try {
            w.child.stdin.write(JSON.stringify({ exit: true }) + "\n");
            w.child.stdin.end();
          } catch (_) {}
        });
        resolve();
      }
    }

    for (let i = 0; i < workerCount; i++) {
      const child = spawn(process.execPath, [CONFIG.workerScript], {
        env,
        stdio: ["pipe", "pipe", "inherit"],
        cwd: path.dirname(CONFIG.srcDir),
      });
      const rl = readline.createInterface({
        input: child.stdout,
        terminal: false,
      });
      child.on("error", (err) => {
        log(`❌ Worker ${i + 1} spawn error: ${err.message}`);
        if (workerCurrentFilePath[i]) {
          queue.push(workerCurrentFilePath[i]);
          log(
            `   Re-queued: ${path.relative(CONFIG.srcDir, workerCurrentFilePath[i])}`
          );
        }
        clearWorkerTask(i);
        if (--running === 0 && !resolved) {
          resolved = true;
          resolve();
        }
      });
      child.on("exit", (code) => {
        if (workerCurrentFilePath[i]) {
          queue.push(workerCurrentFilePath[i]);
          log(
            `   Worker ${i + 1} exited (code ${code}), re-queued: ${path.relative(CONFIG.srcDir, workerCurrentFilePath[i])}`
          );
        }
        clearWorkerTask(i);
        if (--running === 0 && !resolved) {
          resolved = true;
          resolve();
        }
      });
      rl.on("line", (line) => {
        let result;
        try {
          result = JSON.parse(line);
        } catch (_) {
          return;
        }
        clearWorkerTask(i);
        results.push(result);
        completed++;
        if (result.skipped) {
          log(`⏭️  Skipped (AI-generated): ${result.relativePath}`);
        } else if (result.success) {
          log(`✅ Success: ${result.relativePath}`);
        } else if (result.isManual) {
          log(`🔧 Needs manual: ${result.relativePath}`);
        } else {
          log(`❌ Failed: ${result.relativePath} - ${result.error || ""}`);
        }
        if (completed % 10 === 0) {
          log(`📊 Progress: ${completed}/${files.length}`);
        }
        assignNext(i, child, rl);
        maybeDone();
      });
      workers.push({ child, rl });
    }

    for (let i = 0; i < workerCount; i++) {
      assignNext(i, workers[i].child, workers[i].rl);
    }
  });

  results.forEach((r) => applyProgress(progress, r));
  progress.save();

  const successCount = results.filter((r) => r.success).length;
  const failCount = results.length - successCount;
  return { successCount, failCount };
}

/**
 * Redis 模式：主进程将任务 LPUSH 到队列，worker 子进程 BRPOP 后转换并 LPUSH 结果
 */
async function batchConvertWithRedis(files, progress) {
  let createClient;
  try {
    const redis = require("redis");
    createClient = redis.createClient;
  } catch (_) {
    console.error("❌ --redis 需要安装 redis 包: pnpm add redis");
    process.exit(1);
  }
  const client = createClient({
    url: process.env.REDIS_URL || "redis://127.0.0.1:6379",
  });
  client.on("error", (err) => console.error("Redis error:", err.message));
  await client.connect();

  const QUEUE_KEY = "ts2dart:queue";
  const RESULT_KEY = "ts2dart:results";
  const CONFIG_KEY = "ts2dart:config";

  await client.hSet(CONFIG_KEY, {
    srcDir: CONFIG.srcDir,
    outputDir: CONFIG.outputDir,
    progressFile: CONFIG.progressFile,
  });

  for (const tsFilePath of files) {
    await client.lPush(QUEUE_KEY, tsFilePath);
  }

  const workerCount = Math.min(CONFIG.jobs, files.length);
  const workers = [];
  for (let i = 0; i < workerCount; i++) {
    const child = spawn(
      process.execPath,
      [path.join(__dirname, "converter-worker-redis.cjs")],
      {
        env: {
          ...process.env,
          REDIS_URL: process.env.REDIS_URL || "redis://127.0.0.1:6379",
        },
        stdio: ["ignore", "inherit", "inherit"],
      }
    );
    workers.push(child);
  }

  const results = [];
  while (results.length < files.length) {
    const raw = await client.brPop(RESULT_KEY, 30);
    if (!raw || raw.element == null) continue;
    let result;
    try {
      result = JSON.parse(raw.element);
    } catch (_) {
      continue;
    }
    results.push(result);
    applyProgress(progress, result);
    const completed = results.length;
    if (result.skipped) {
      console.log(`⏭️  Skipped (AI-generated): ${result.relativePath}`);
    } else if (result.success) {
      console.log(`✅ Success: ${result.relativePath}`);
    } else if (result.isManual) {
      console.log(`🔧 Needs manual: ${result.relativePath}`);
    } else {
      console.log(`❌ Failed: ${result.relativePath} - ${result.error || ""}`);
    }
    if (completed % 10 === 0) {
      console.log(`📊 Progress: ${completed}/${files.length}`);
    }
  }

  for (const w of workers) {
    w.kill("SIGTERM");
  }
  progress.save();
  await client.del(QUEUE_KEY);
  await client.del(CONFIG_KEY);
  await client.quit();

  const successCount = results.filter((r) => r.success).length;
  const failCount = results.length - successCount;
  return { successCount, failCount };
}

// ============ 主程序 ============
async function main() {
  console.log("🚀 TypeScript to Dart Batch Converter\n");
  console.log(`Source: ${CONFIG.srcDir}`);
  console.log(`Output: ${CONFIG.outputDir}`);
  console.log(`Mode: ${CONFIG.useAI ? "AI API" : "Template"}`);
  console.log(`Jobs: ${CONFIG.jobs} (use -j N or --jobs N to change)`);
  if (CONFIG.jobs > 1) {
    console.log(
      `Mode: ${CONFIG.useRedis ? "Redis queue" : "Multi-process"} (big files like az/2.53.0/network.ts no longer block others)\n`
    );
  } else {
    console.log("");
  }

  // 扫描所有 TypeScript 文件
  console.log("📁 Scanning TypeScript files...");
  const allTsFiles = getAllTsFiles(CONFIG.srcDir);
  console.log(`Found ${allTsFiles.length} TypeScript files\n`);

  // 初始化进度跟踪
  const progress = new ProgressTracker(CONFIG.progressFile);
  progress.data.total = allTsFiles.length;
  progress.save();

  // 显示当前进度
  const initialStats = progress.getStats();
  console.log(`📊 Current Progress:`);
  console.log(`   Completed: ${initialStats.completed}`);
  console.log(`   Failed: ${initialStats.failed}`);
  console.log(`   Needs Manual: ${initialStats.needsManual}`);
  console.log(`   Remaining: ${initialStats.remaining}\n`);

  if (initialStats.remaining === 0) {
    console.log("✨ All files already converted!");
    return;
  }

  // 过滤出未完成的文件（已完成的不再转换）
  const pendingFiles = allTsFiles.filter((file) => {
    const relativePath = path.relative(CONFIG.srcDir, file);
    return !progress.isCompleted(relativePath);
  });

  // 注意：已存在且首行为 // AI-generated 的 .dart 会在 doConvertOne 中被跳过且不覆盖

  console.log(`🔧 Converting ${pendingFiles.length} pending files...\n`);
  console.log("─".repeat(60));

  // 开始转换
  const startTime = Date.now();
  const result = await batchConvert(pendingFiles, progress);
  const endTime = Date.now();

  // 最终统计
  console.log("\n" + "═".repeat(60));
  console.log("✨ Conversion Complete!\n");

  const finalStats = progress.getStats();
  console.log(`📊 Final Statistics:`);
  console.log(`   Total Files: ${finalStats.total}`);
  console.log(`   Completed: ${finalStats.completed} ✅`);
  console.log(`   Needs Manual Conversion: ${finalStats.needsManual} 🔧`);
  console.log(`   Failed: ${finalStats.failed} ❌`);
  console.log(
    `   Auto-conversion Rate: ${((finalStats.completed / finalStats.total) * 100).toFixed(2)}%`
  );
  console.log(`   Time Elapsed: ${((endTime - startTime) / 1000).toFixed(2)}s`);

  if (finalStats.needsManual > 0) {
    console.log(
      `\n🔧 ${finalStats.needsManual} file(s) need manual conversion (contain generators/functions)`
    );
    console.log(`   These files are too complex for automatic conversion.`);
    console.log(`   Please convert them manually or use AI assistance.`);
  }

  if (finalStats.failed > 0) {
    console.log(`\n⚠️  Check error log: ${CONFIG.errorLogFile}`);
  }

  console.log(`\n📝 Progress saved to: ${CONFIG.progressFile}`);

  // 批量格式化生成的 Dart 代码
  const projectRoot = path.resolve(__dirname, "..");
  try {
    console.log("\n📐 Formatting Dart specs (dart format dart/lib/specs/)...");
    execSync("dart format dart/lib/specs/", {
      cwd: projectRoot,
      stdio: "inherit",
    });
    console.log("   Done.");
  } catch (e) {
    console.warn(
      "   dart format failed (exit " + (e.status ?? "?") + "):",
      e.message || ""
    );
  }

  console.log("\n" + "═".repeat(60));
}

// 运行
if (require.main === module) {
  main().catch((error) => {
    console.error("Fatal error:", error);
    process.exit(1);
  });
}

module.exports = { convertFile, getAllTsFiles };
