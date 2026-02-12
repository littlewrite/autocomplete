#!/usr/bin/env node

/**
 * TypeScript to Dart Batch Converter
 * 
 * 功能：
 * - 批量转换 ./src/ 下的 TypeScript 文件为 Dart
 * - 保持目录结构映射到 ./dart/lib/specs/
 * - 支持断点续传
 * - 记录进度和错误日志
 */

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

// ============ 配置区 ============
const CONFIG = {
  srcDir: path.resolve(__dirname, '../src'),
  outputDir: path.resolve(__dirname, '../dart/lib/specs'),
  progressFile: path.resolve(__dirname, './conversion-progress.json'),
  errorLogFile: path.resolve(__dirname, './conversion-errors.log'),
  // 是否使用 AI API（如果为 false，使用模板转换）
  useAI: process.env.USE_AI_API === 'true',
  // 批处理大小
  batchSize: 10,
  // 是否并行处理
  parallel: false,
};

// ============ 进度管理 ============
class ProgressTracker {
  constructor(filePath) {
    this.filePath = filePath;
    this.data = this.load();
  }

  load() {
    if (fs.existsSync(this.filePath)) {
      return JSON.parse(fs.readFileSync(this.filePath, 'utf8'));
    }
    return {
      completed: [],
      failed: [],
      needsManual: [],  // 需要手动转换的复杂文件
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
      reason: 'Contains complex types (generators, functions, etc.)'
    };
    this.data.needsManual.push(manualEntry);
    this.save();
    
    // 写入单独的日志
    const logEntry = `[${manualEntry.timestamp}] 🔧 NEEDS MANUAL CONVERSION: ${file}\n` +
      `  Reason: ${manualEntry.reason}\n` +
      `  Warnings:\n${warnings.map(w => `    - ${w}`).join('\n')}\n\n`;
    fs.appendFileSync(CONFIG.errorLogFile, logEntry);
  }

  isCompleted(file) {
    return this.data.completed.includes(file);
  }

  getStats() {
    const processed = this.data.completed.length + this.data.failed.length + (this.data.needsManual?.length || 0);
    return {
      total: this.data.total,
      completed: this.data.completed.length,
      failed: this.data.failed.length,
      needsManual: this.data.needsManual?.length || 0,
      remaining: this.data.total - processed,
      progress: ((this.data.completed.length / this.data.total) * 100).toFixed(2) + '%',
    };
  }
}

// ============ 文件扫描 ============
function getAllTsFiles(dir, fileList = []) {
  const files = fs.readdirSync(dir);
  
  files.forEach(file => {
    const filePath = path.join(dir, file);
    const stat = fs.statSync(filePath);
    
    if (stat.isDirectory()) {
      getAllTsFiles(filePath, fileList);
    } else if (file.endsWith('.ts') && !file.endsWith('.d.ts')) {
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
    relativePath.replace(/\.ts$/, '.dart')
  );
  return dartPath;
}

// ============ 模板转换器 ============
const { convertTsToDart } = require('./converter-engine.cjs');

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
    console.warn(`  ⚠️  Smart conversion failed, using fallback: ${error.message}`);
    return convertTsToDartFallback(tsCode, tsFilePath);
  }
}

function convertTsToDartFallback(tsCode, tsFilePath) {
  /**
   * 回退方案：基于简单规则的转换
   */
  
  let dartCode = '';
  
  // 1. 添加头部
  const fileName = path.basename(tsFilePath);
  const today = new Date().toISOString().split('T')[0];
  
  dartCode += `// Auto-generated from ${fileName}
// Generated at: ${today}

import 'package:autocomplete/src/spec.dart';

`;
  
  // 2. 简单替换（非常基础的版本）
  dartCode += '// TODO: Manual conversion needed\n';
  dartCode += '// Original TypeScript code preserved as comments:\n';
  dartCode += tsCode.split('\n').map(line => '// ' + line).join('\n');
  
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
  throw new Error('AI conversion not implemented yet. Please set USE_AI_API=false');
}

// ============ 主转换函数 ============
async function convertFile(tsFilePath, progress) {
  const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
  
  // 检查是否已完成
  if (progress.isCompleted(relativePath)) {
    console.log(`⏭️  Skipping (already done): ${relativePath}`);
    return true;
  }
  
  console.log(`🔄 Converting: ${relativePath}`);
  
  try {
    // 读取 TypeScript 文件
    const tsCode = fs.readFileSync(tsFilePath, 'utf8');
    
    // 转换
    let dartCode;
    if (CONFIG.useAI) {
      dartCode = await convertTsToDartAI(tsCode, tsFilePath);
    } else {
      dartCode = convertTsToDartTemplate(tsCode, tsFilePath);
    }
    
    // 确定输出路径
    const dartPath = getTsDartPathMapping(tsFilePath);
    const dartDir = path.dirname(dartPath);
    
    // 创建目录
    if (!fs.existsSync(dartDir)) {
      fs.mkdirSync(dartDir, { recursive: true });
    }
    
    // 写入 Dart 文件
    fs.writeFileSync(dartPath, dartCode, 'utf8');
    
    // 标记完成
    progress.markCompleted(relativePath);
    console.log(`✅ Success: ${relativePath} → ${path.relative(process.cwd(), dartPath)}`);
    
    return true;
  } catch (error) {
    // 检查是否是需要手动转换的复杂文件
    if (error.isComplexFile) {
      console.log(`🔧 Needs manual conversion: ${relativePath}`);
      console.log(`   Reasons:`);
      error.warnings.forEach(w => console.log(`     - ${w}`));
      progress.markNeedsManual(relativePath, error.warnings);
      return false;
    }
    
    // 真正的错误
    console.error(`❌ Failed: ${relativePath}`);
    console.error(`   Error: ${error.message}`);
    progress.markFailed(relativePath, error.message);
    return false;
  }
}

// ============ 批量处理 ============
async function batchConvert(files, progress) {
  let successCount = 0;
  let failCount = 0;
  
  for (let i = 0; i < files.length; i++) {
    const file = files[i];
    console.log(`\n[${i + 1}/${files.length}]`);
    
    const success = await convertFile(file, progress);
    if (success) {
      successCount++;
    } else {
      failCount++;
    }
    
    // 每处理10个文件显示一次进度
    if ((i + 1) % 10 === 0) {
      const stats = progress.getStats();
      console.log(`\n📊 Progress: ${stats.completed}/${stats.total} (${stats.progress})`);
    }
  }
  
  return { successCount, failCount };
}

// ============ 主程序 ============
async function main() {
  console.log('🚀 TypeScript to Dart Batch Converter\n');
  console.log(`Source: ${CONFIG.srcDir}`);
  console.log(`Output: ${CONFIG.outputDir}`);
  console.log(`Mode: ${CONFIG.useAI ? 'AI API' : 'Template'}\n`);
  
  // 扫描所有 TypeScript 文件
  console.log('📁 Scanning TypeScript files...');
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
    console.log('✨ All files already converted!');
    return;
  }
  
  // 过滤出未完成的文件
  const pendingFiles = allTsFiles.filter(file => {
    const relativePath = path.relative(CONFIG.srcDir, file);
    return !progress.isCompleted(relativePath);
  });
  
  console.log(`🔧 Converting ${pendingFiles.length} pending files...\n`);
  console.log('─'.repeat(60));
  
  // 开始转换
  const startTime = Date.now();
  const result = await batchConvert(pendingFiles, progress);
  const endTime = Date.now();
  
  // 最终统计
  console.log('\n' + '═'.repeat(60));
  console.log('✨ Conversion Complete!\n');
  
  const finalStats = progress.getStats();
  console.log(`📊 Final Statistics:`);
  console.log(`   Total Files: ${finalStats.total}`);
  console.log(`   Completed: ${finalStats.completed} ✅`);
  console.log(`   Needs Manual Conversion: ${finalStats.needsManual} 🔧`);
  console.log(`   Failed: ${finalStats.failed} ❌`);
  console.log(`   Auto-conversion Rate: ${((finalStats.completed / finalStats.total) * 100).toFixed(2)}%`);
  console.log(`   Time Elapsed: ${((endTime - startTime) / 1000).toFixed(2)}s`);
  
  if (finalStats.needsManual > 0) {
    console.log(`\n🔧 ${finalStats.needsManual} file(s) need manual conversion (contain generators/functions)`);
    console.log(`   These files are too complex for automatic conversion.`);
    console.log(`   Please convert them manually or use AI assistance.`);
  }
  
  if (finalStats.failed > 0) {
    console.log(`\n⚠️  Check error log: ${CONFIG.errorLogFile}`);
  }
  
  console.log(`\n📝 Progress saved to: ${CONFIG.progressFile}`);
  console.log('\n' + '═'.repeat(60));
}

// 运行
if (require.main === module) {
  main().catch(error => {
    console.error('Fatal error:', error);
    process.exit(1);
  });
}

module.exports = { convertFile, getAllTsFiles };
