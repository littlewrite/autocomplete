#!/bin/bash

# 批量转换脚本 - 带安全检查

set -e

echo "╔════════════════════════════════════════════════════════════╗"
echo "║  TypeScript → Dart 批量转换工具                             ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# 检查当前目录
if [ ! -f "ts-to-dart-converter.cjs" ]; then
    echo "❌ 错误：请在 tools 目录下运行此脚本"
    echo "   cd /Users/th/Dart/autocomplete/tools"
    exit 1
fi

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 错误：未安装 Node.js"
    exit 1
fi

echo "✅ 环境检查通过"
echo ""

# 显示统计信息
TS_COUNT=$(find ../src -name "*.ts" -not -name "*.d.ts" | wc -l | tr -d ' ')
echo "📊 待转换文件：$TS_COUNT 个 TypeScript 文件"

if [ -f "conversion-progress.json" ]; then
    COMPLETED=$(grep -o '"completed"' conversion-progress.json | wc -l | tr -d ' ')
    echo "📝 已完成：$COMPLETED 个文件"
    echo ""
    read -p "⚠️  发现进度文件，是否继续（会跳过已完成的文件）？[Y/n] " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]] && [[ ! -z $REPLY ]]; then
        echo "已取消"
        exit 0
    fi
fi

echo ""
echo "🚀 开始转换..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 运行转换
node ts-to-dart-converter.cjs

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✨ 转换完成！"
echo ""

# 显示结果统计
if [ -f "../dart/lib/specs" ]; then
    DART_COUNT=$(find ../dart/lib/specs -name "*.dart" 2>/dev/null | wc -l | tr -d ' ')
    echo "📊 生成的 Dart 文件：$DART_COUNT"
fi

if [ -f "conversion-errors.log" ]; then
    ERROR_COUNT=$(grep -c "Error:" conversion-errors.log 2>/dev/null || echo "0")
    if [ "$ERROR_COUNT" -gt 0 ]; then
        echo "⚠️  失败文件：$ERROR_COUNT（查看 conversion-errors.log）"
    fi
fi

echo ""
echo "📝 下一步："
echo "   1. 查看转换结果：cd ../dart/lib/specs && ls -la"
echo "   2. 运行 Dart 分析：cd ../dart && dart analyze"
echo "   3. 查看错误日志：cat conversion-errors.log"
echo ""
