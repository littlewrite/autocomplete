#!/usr/bin/env node

/**
 * 测试转换器
 * 
 * 用于测试转换引擎在少量文件上的效果
 */

const fs = require('fs');
const path = require('path');
const { convertTsToDart } = require('./converter-engine.cjs');

const TEST_CASES = [
  { relPath: '../src/astro.ts', expect: 'auto' },
  { relPath: '../src/@capgo/cli.ts', expect: 'auto' },
  { relPath: '../src/git.ts', expect: 'manual' },
  { relPath: '../src/brew.ts', expect: 'manual' },
];

console.log('🧪 Testing TS→Dart Converter\n');
console.log('═'.repeat(60));

let autoCount = 0;
let manualCount = 0;
let skipCount = 0;
let failCount = 0;

TEST_CASES.forEach((testCase, index) => {
  const tsPath = path.resolve(__dirname, testCase.relPath);
  const fileName = path.basename(tsPath);
  
  console.log(
    `\n[${index + 1}/${TEST_CASES.length}] Testing: ${fileName} (expect: ${testCase.expect})`
  );
  console.log('─'.repeat(60));
  
  try {
    // 检查文件是否存在
    if (!fs.existsSync(tsPath)) {
      console.log(`⏭️  File not found, skipping: ${tsPath}`);
      skipCount++;
      return;
    }
    
    // 读取 TypeScript 文件
    const tsCode = fs.readFileSync(tsPath, 'utf8');
    console.log(`📄 TypeScript file: ${tsCode.length} characters`);
    
    // 转换
    const startTime = Date.now();
    const dartCode = convertTsToDart(tsPath, tsCode);
    const endTime = Date.now();
    
    console.log(`✅ Conversion successful (${endTime - startTime}ms)`);
    console.log(`📄 Dart output: ${dartCode.length} characters`);
    if (testCase.expect === 'manual') {
      console.log('ℹ️  Note: this file was expected to need manual conversion');
    }
    
    // 预览前几行
    const lines = dartCode.split('\n').slice(0, 15);
    console.log('\n📝 Preview (first 15 lines):');
    console.log('┌' + '─'.repeat(58) + '┐');
    lines.forEach(line => {
      const truncated = line.length > 56 ? line.slice(0, 53) + '...' : line;
      console.log('│ ' + truncated.padEnd(56) + ' │');
    });
    console.log('└' + '─'.repeat(58) + '┘');
    
    autoCount++;
    
    // 可选：保存到临时文件
    const outputPath = path.resolve(__dirname, `./test-output/${fileName.replace('.ts', '.dart')}`);
    const outputDir = path.dirname(outputPath);
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }
    fs.writeFileSync(outputPath, dartCode);
    console.log(`💾 Saved to: ${path.relative(process.cwd(), outputPath)}`);
    
  } catch (error) {
    if (error && error.isComplexFile) {
      if (testCase.expect === 'manual') {
        console.log('🔧 NEEDS MANUAL CONVERSION (expected)');
        if (Array.isArray(error.warnings) && error.warnings.length) {
          error.warnings.forEach((w) => console.log(`   - ${w}`));
        }
        manualCount++;
        return;
      }
      console.error('❌ NEEDS MANUAL CONVERSION (unexpected)');
      if (Array.isArray(error.warnings) && error.warnings.length) {
        error.warnings.forEach((w) => console.error(`   - ${w}`));
      }
      failCount++;
      return;
    }

    console.error(`❌ Conversion failed: ${error.message}`);
    failCount++;
  }
});

console.log('\n' + '═'.repeat(60));
console.log('📊 Test Results:');
console.log(`   Auto-converted: ${autoCount} ✅`);
console.log(`   Needs manual: ${manualCount} 🔧`);
console.log(`   Skipped: ${skipCount} ⏭️`);
console.log(`   Failed: ${failCount} ❌`);
console.log(`   Total: ${TEST_CASES.length}`);
console.log('═'.repeat(60));

if (failCount > 0) {
  process.exit(1);
}
