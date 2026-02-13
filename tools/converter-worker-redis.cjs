#!/usr/bin/env node
/**
 * Redis 模式 Worker：从 Redis 队列 ts2dart:queue BRPOP 任务，转换后 LPUSH 到 ts2dart:results
 * 环境变量：REDIS_URL（默认 redis://127.0.0.1:6379）
 */

const path = require('path');
const fs = require('fs');
const { convertTsToDart } = require('./converter-engine.cjs');

const QUEUE_KEY = 'ts2dart:queue';
const RESULT_KEY = 'ts2dart:results';
const CONFIG_KEY = 'ts2dart:config';

async function main() {
  const { createClient } = await import('redis');
  const client = createClient({
    url: process.env.REDIS_URL || 'redis://127.0.0.1:6379',
  });
  client.on('error', (err) => console.error('Redis worker error:', err.message));
  await client.connect();

  const configRaw = await client.hGetAll(CONFIG_KEY);
  const CONFIG = {
    srcDir: configRaw.srcDir || path.resolve(__dirname, '../src'),
    outputDir: configRaw.outputDir || path.resolve(__dirname, '../dart/lib/specs'),
  };

  function getTsDartPathMapping(tsFilePath) {
    const relativePath = path.relative(CONFIG.srcDir, tsFilePath);
    return path.join(CONFIG.outputDir, relativePath.replace(/\.ts$/, '.dart'));
  }

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

  while (true) {
    const reply = await client.brPop(QUEUE_KEY, 5);
    if (!reply || !reply.element) continue;
    const tsFilePath = reply.element;
    const result = doConvertOne(tsFilePath);
    await client.lPush(RESULT_KEY, JSON.stringify(result));
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
