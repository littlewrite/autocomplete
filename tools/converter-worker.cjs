#!/usr/bin/env node
/**
 * 单进程转换 Worker（供多进程调度使用）
 * 从 stdin 读取 JSON 行：{ "tsFilePath": "/abs/path/to/file.ts" } 或 { "exit": true }
 * 向 stdout 输出 JSON 行：{ "relativePath", "success", "error?", "isManual?", "warnings?" }
 * 通过环境变量接收配置：TS2DART_SRC_DIR, TS2DART_OUTPUT_DIR
 */

const fs = require('fs');
const path = require('path');
const readline = require('readline');
const { convertTsToDart } = require('./converter-engine.cjs');

const CONFIG = {
  srcDir: process.env.TS2DART_SRC_DIR || path.resolve(__dirname, '../src'),
  outputDir: process.env.TS2DART_OUTPUT_DIR || path.resolve(__dirname, '../dart/lib/specs'),
  useAI: process.env.USE_AI_API === 'true',
};

function getTsDartPathMapping(tsFilePath) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
  return path.join(CONFIG.outputDir, relativePath.replace(/\.ts$/, '.dart'));
}

/** 已存在的 .dart 首行为 // AI-generated 时不覆盖（AI 或人工编辑） */
function shouldSkipOverwrite(dartPath) {
  if (!fs.existsSync(dartPath)) return false;
  const content = fs.readFileSync(dartPath, 'utf8');
  const firstLine = content.split('\n')[0].trim();
  return firstLine.startsWith('// AI-generated');
}

function convertTsToDartFallback(tsCode, tsFilePath) {
  const fileName = path.basename(tsFilePath);
  const today = new Date().toISOString().split('T')[0];
  let dartCode = `// Auto-generated from ${fileName}\n// Generated at: ${today}\n\nimport 'package:autocomplete/src/spec.dart';\n\n`;
  dartCode += '// TODO: Manual conversion needed\n// Original TypeScript code preserved as comments:\n';
  dartCode += tsCode.split('\n').map((line) => '// ' + line).join('\n');
  return dartCode;
}

function doConvertOne(tsFilePath) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
  const dartPath = getTsDartPathMapping(tsFilePath);
  if (shouldSkipOverwrite(dartPath)) {
    return { relativePath, success: true, skipped: true };
  }
  try {
    const tsCode = fs.readFileSync(tsFilePath, 'utf8');
    let dartCode;
    try {
      dartCode = convertTsToDart(tsFilePath, tsCode);
    } catch (e) {
      if (e.isComplexFile) throw e;
      dartCode = convertTsToDartFallback(tsCode, tsFilePath);
    }
    const dartDir = path.dirname(dartPath);
    if (!fs.existsSync(dartDir)) {
      fs.mkdirSync(dartDir, { recursive: true });
    }
    fs.writeFileSync(dartPath, dartCode, 'utf8');
    return { relativePath, success: true };
  } catch (err) {
    if (err.isComplexFile) {
      return { relativePath, success: false, isManual: true, warnings: err.warnings || [] };
    }
    return { relativePath, success: false, error: err.message };
  }
}

function sendResult(obj) {
  process.stdout.write(JSON.stringify(obj) + '\n');
}

const rl = readline.createInterface({ input: process.stdin, terminal: false });
rl.on('line', (line) => {
  let job;
  try {
    job = JSON.parse(line);
  } catch (_) {
    sendResult({ relativePath: '', success: false, error: 'Invalid JSON job' });
    return;
  }
  if (job.exit) {
    rl.close();
    process.exit(0);
    return;
  }
  const tsFilePath = job.tsFilePath;
  if (!tsFilePath || typeof tsFilePath !== 'string') {
    sendResult({ relativePath: '', success: false, error: 'Missing tsFilePath' });
    return;
  }
  const result = doConvertOne(tsFilePath);
  sendResult(result);
});

rl.on('close', () => process.exit(0));
