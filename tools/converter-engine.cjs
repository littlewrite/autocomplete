/**
 * 智能 TypeScript → Dart 转换引擎
 *
 * 使用 AST 解析和模式匹配进行转换
 */

const fs = require("fs");
const path = require("path");

// Known keys per type (Dart spec). Unknown keys (e.g. suggestCurrentToken, displayName) are skipped.
const ARG_ALLOWED_KEYS = new Set([
  "name",
  "description",
  "template",
  "suggestions",
  "generators",
  "isOptional",
  "isVariadic",
  "isDangerous",
  "filterStrategy",
  "defaultValue",
]);
const FIG_SUGGESTION_ALLOWED_KEYS = new Set([
  "name",
  "description",
  "icon",
  "priority",
  "insertValue",
  "hidden",
]);
const OPTION_ALLOWED_KEYS = new Set([
  "name",
  "description",
  "args",
  "generators",
  "isRepeatable",
  "isPersistent",
  "isDangerous",
  "dependsOn",
  "exclusiveOn",
  "insertValue",
  "priority",
]);
const SUBCOMMAND_ALLOWED_KEYS = new Set([
  "name",
  "description",
  "subcommands",
  "options",
  "args",
  "icon",
  "loadSpec",
  "filterStrategy",
  "priority",
  "requiresSubcommand",
  "additionalSuggestions",
  "generators",
  "generateSpec",
  "parserDirectives",
]);
const GENERATOR_ALLOWED_KEYS = new Set([
  "script",
  "scriptPath",
  "template",
  "postProcess",
  "cache",
  "getQueryTerm",
  "trigger",
  "splitOn",
  "scriptTimeout",
]);
/** Root Fig.Spec: only keys that exist on Dart FigSpec (no isPersistent; that belongs on Option in TS) */
const FIG_SPEC_ALLOWED_KEYS = new Set([
  "name",
  "displayName",
  "description",
  "subcommands",
  "options",
  "args",
  "icon",
  "filterStrategy",
  "hidden",
  "insertValue",
  "replaceValue",
  "priority",
  "deprecated",
  "parserDirectives",
  "requiresSubcommand",
  "additionalSuggestions",
  "generateSpec",
  "loadSpec",
]);

/**
 * TypeScript Fig.Spec 转换器
 */
class TsToDartConverter {
  constructor(tsFilePath, tsCode, options = {}) {
    this.tsFilePath = tsFilePath;
    this.tsCode = tsCode;
    this.options = options;
    /** When true: do not throw on complex types; emit original TS as // TS_UNCONVERTED_* comments and null in Dart. */
    this.commentFallback = !!options.commentFallback;
    this.imports = new Set();
    this.complexityWarnings = []; // 收集复杂类型警告
    this.hasComplexTypes = false; // 标记是否包含复杂类型
    /** Top-level Option[] / Suggestion[] / Subcommand[] variable names → TS array source (for resolution in spec) */
    this.optionListVarNames = new Set();
    this.suggestionListVarNames = new Set();
    this.subcommandListVarNames = new Set();
    /** Same names → converted Dart list literal (for emitting variable declarations) */
    this.optionListDart = {};
    this.suggestionListDart = {};
    this.subcommandListDart = {};
    /** Fig.Generator blocks: TS source to emit as commented block for later manual/AI conversion */
    this.generatorBlocks = [];
  }

  /**
   * 主转换入口
   */
  convert() {
    // 先检测是否包含复杂类型
    this.detectComplexity();

    // 如果包含复杂类型且未开启注释回退，抛出错误
    if (this.hasComplexTypes && !this.commentFallback) {
      const error = new Error(
        "File contains complex types that cannot be auto-converted"
      );
      error.warnings = this.complexityWarnings;
      error.isComplexFile = true;
      throw error;
    }

    let dartCode = "";

    // 1. 添加文件头注释
    dartCode += this.generateHeader();

    // 2. 提取并转换 imports
    dartCode += this.convertImports();

    // 2.5 提取并转换顶层 Option[] / Suggestion[] 变量（供 spec 内 options: [...x] 等引用）
    this.extractAndConvertListVariables();

    // 2.6 提取 Fig.Generator 块（以注释形式写入，供后续人工/AI 转换）
    this.extractGeneratorBlocks();

    // 3. 提取并转换主要内容
    dartCode += this.convertMainContent();

    return dartCode;
  }

  /**
   * 将无法转换的 TS 源码格式化为 Dart 行注释块，便于后续 grep / AI 处理
   * 约定: // TS_UNCONVERTED_START (label) ... // TS_UNCONVERTED_END
   */
  formatUnconvertedComment(rawValue, label = "") {
    const prefix = label ? `// TS_UNCONVERTED_START (${label})\n` : "// TS_UNCONVERTED_START\n";
    const safe = String(rawValue)
      .replace(/\*\//g, "* /") // 避免块注释提前结束
      .split("\n")
      .map((line) => "// " + line)
      .join("\n");
    return prefix + safe + "\n// TS_UNCONVERTED_END";
  }

  /**
   * 检测文件复杂度
   */
  detectComplexity() {
    const complexPatterns = [
      {
        pattern: /postProcess\s*:/,
        message:
          "Contains Generator with postProcess function (requires manual conversion)",
      },
      {
        pattern: /script\s*:\s*\[/,
        message:
          "Contains Generator with script execution (requires manual conversion)",
      },
      {
        pattern: /function\s*\(/,
        message:
          "Contains function definitions (not supported in const context)",
      },
      {
        pattern: /=>\s*{/,
        message: "Contains arrow functions (not supported in const context)",
      },
      {
        pattern: /const\s+\w+Generator\s*[:=]/,
        message: "Contains Generator definitions (requires runtime support)",
      },
    ];

    complexPatterns.forEach(({ pattern, message }) => {
      if (pattern.test(this.tsCode)) {
        this.hasComplexTypes = true;
        this.complexityWarnings.push(message);
      }
    });
  }

  /**
   * 生成 Dart 文件头
   */
  generateHeader() {
    const fileName = path.basename(this.tsFilePath);
    const today = new Date().toISOString().split("T")[0];

    return `// Auto-generated from TypeScript source: ${fileName}
// Generated at: ${today}
// WARNING: Manual changes may be overwritten!

`;
  }

  /**
   * 转换 imports
   */
  convertImports() {
    // 仅保留 spec；generators 仅在未过滤的 Generator 时需要，当前转换会过滤掉，不自动添加
    return `import 'package:autocomplete/src/spec.dart';\n\n`;
  }

  /**
   * 从 code 的 startIndex（指向 [ 的位置）起，按括号平衡提取到匹配的 ]，返回 [...] 的完整字符串
   */
  extractBalancedBracketArray(code, startIndex) {
    if (code[startIndex] !== "[") return null;
    let depth = 0;
    let inString = false;
    let stringChar = "";
    for (let i = startIndex; i < code.length; i++) {
      const c = code[i];
      const prev = i > 0 ? code[i - 1] : "";
      if (!inString) {
        if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
          inString = true;
          stringChar = c;
        } else if (c === "[") depth++;
        else if (c === "]") {
          depth--;
          if (depth === 0) return code.slice(startIndex, i + 1);
        }
      } else if (c === stringChar && prev !== "\\") inString = false;
    }
    return null;
  }

  /**
   * 从 code 的 startIndex（指向 { 的位置）起，按括号平衡提取到匹配的 }，返回 { ... } 的完整字符串（含首尾花括号）
   */
  extractBalancedBraceObject(code, startIndex) {
    if (code[startIndex] !== "{") return null;
    let depth = 0;
    let inString = false;
    let stringChar = "";
    for (let i = startIndex; i < code.length; i++) {
      const c = code[i];
      const prev = i > 0 ? code[i - 1] : "";
      if (!inString) {
        if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
          inString = true;
          stringChar = c;
        } else if (c === "{") depth++;
        else if (c === "}") {
          depth--;
          if (depth === 0) return code.slice(startIndex, i + 1);
        }
      } else if (c === stringChar && prev !== "\\") inString = false;
    }
    return null;
  }

  /**
   * 提取顶层 Fig.Generator 单变量与 Record<string, Fig.Generator>，将 TS 源码存入 generatorBlocks，供以注释形式写入 Dart
   */
  extractGeneratorBlocks() {
    const code = this.tsCode;
    const blocks = [];

    // 单变量: const name: Fig.Generator = {
    const singleRegex = /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Generator\s*=\s*\{/g;
    let m;
    while ((m = singleRegex.exec(code)) !== null) {
      const varName = m[1];
      const braceStart = m.index + m[0].length - 1;
      const objSrc = this.extractBalancedBraceObject(code, braceStart);
      if (!objSrc) continue;
      let end = braceStart + objSrc.length;
      while (end < code.length && /[\s;]/.test(code[end])) end++;
      const tsSource = code.slice(m.index, end).trim();
      blocks.push({ varName, tsSource });
    }

    // Record: (export )?const name: Record<string, Fig.Generator> = {
    const recordRegex = /(?:export\s+)?const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Record\s*<\s*string\s*,\s*Fig\.Generator\s*>\s*=\s*\{/g;
    while ((m = recordRegex.exec(code)) !== null) {
      const varName = m[1];
      const braceStart = m.index + m[0].length - 1;
      const objSrc = this.extractBalancedBraceObject(code, braceStart);
      if (!objSrc) continue;
      let end = braceStart + objSrc.length;
      while (end < code.length && /[\s;]/.test(code[end])) end++;
      const tsSource = code.slice(m.index, end).trim();
      if (!blocks.some((b) => b.varName === varName)) blocks.push({ varName, tsSource });
    }

    this.generatorBlocks = blocks;
  }

  /**
   * 将 Generator 的 TS 源码格式化为 Dart 行注释块，便于 grep / 人工或 AI 后续转换
   * 约定: // TS_GENERATOR_BLOCK_START (varName) ... // TS_GENERATOR_BLOCK_END
   */
  formatGeneratorBlockAsComment(varName, tsSource) {
    const prefix = `// TS_GENERATOR_BLOCK_START (${varName})\n`;
    const safe = String(tsSource)
      .replace(/\*\//g, "* /")
      .split("\n")
      .map((line) => "// " + line)
      .join("\n");
    return prefix + safe + "\n// TS_GENERATOR_BLOCK_END\n";
  }

  /**
   * 提取顶层 const name: Fig.Option[] = [ ... ] 和 Fig.Suggestion[] = [ ... ]，填充 optionListVarNames / suggestionListVarNames 及对应 Dart
   */
  extractAndConvertListVariables() {
    const code = this.tsCode;
    // Fig.Option[] = [
    const optionRegex = /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Option\[\]\s*=\s*\[/g;
    let m;
    while ((m = optionRegex.exec(code)) !== null) {
      const varName = m[1];
      const startBracket = m.index + m[0].length - 1; // position of [
      const arrSrc = this.extractBalancedBracketArray(code, startBracket);
      if (!arrSrc) continue;
      this.optionListVarNames.add(varName);
      const dartArr = this.convertArray(arrSrc, 0, "options");
      this.optionListDart[varName] = dartArr;
    }
    // Fig.Suggestion[] = [
    const suggestionRegex = /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Suggestion\[\]\s*=\s*\[/g;
    while ((m = suggestionRegex.exec(code)) !== null) {
      const varName = m[1];
      const startBracket = m.index + m[0].length - 1;
      const arrSrc = this.extractBalancedBracketArray(code, startBracket);
      if (!arrSrc) continue;
      this.suggestionListVarNames.add(varName);
      const dartArr = this.convertArray(arrSrc, 0, "suggestions");
      this.suggestionListDart[varName] = dartArr;
    }
    // Fig.Subcommand[] = [
    const subcommandRegex = /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Subcommand\[\]\s*=\s*\[/g;
    while ((m = subcommandRegex.exec(code)) !== null) {
      const varName = m[1];
      const startBracket = m.index + m[0].length - 1;
      const arrSrc = this.extractBalancedBracketArray(code, startBracket);
      if (!arrSrc) continue;
      this.subcommandListVarNames.add(varName);
      const dartArr = this.convertArray(arrSrc, 0, "subcommands");
      this.subcommandListDart[varName] = dartArr;
    }
  }

  /**
   * 从 code 的 startIndex（指向 { 的位置）起，用括号平衡提取完整对象，返回 { ... } 字符串
   */
  extractSpecObjectFromPosition(code, startIndex) {
    if (code[startIndex] !== "{") return null;
    let depth = 0;
    let inString = false;
    let stringChar = "";
    for (let i = startIndex; i < code.length; i++) {
      const c = code[i];
      const prev = i > 0 ? code[i - 1] : "";
      if (!inString) {
        if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
          inString = true;
          stringChar = c;
        } else if (c === "{") depth++;
        else if (c === "}") {
          depth--;
          if (depth === 0) return code.slice(startIndex, i + 1);
        }
      } else if (c === stringChar && prev !== "\\") inString = false;
    }
    return null;
  }

  /**
   * 用括号平衡提取 spec 对象。若有多个 Fig.Spec 声明（如 clangBase + completionSpec），
   * 优先返回「含字面量 name 且内容多」的那个，避免只拿到薄包装 { ...base, options: [...] } 导致得到 unknown + 空 options。
   */
  extractSpecObjectByBalancedBraces() {
    const code = this.tsCode;
    const regex = /(?:export\s+)?const\s+\w+\s*:\s*Fig\.Spec\s*=\s*\{/g;
    const candidates = [];
    let m;
    while ((m = regex.exec(code)) !== null) {
      const braceStart = m.index + m[0].length - 1;
      const obj = this.extractSpecObjectFromPosition(code, braceStart);
      if (!obj) continue;
      candidates.push({ index: m.index, obj });
    }
    if (candidates.length === 0) return null;
    if (candidates.length === 1) return candidates[0].obj;
    // 优先：含字面量 name 的；其次按对象长度（内容多的优先）
    const hasLiteralName = (objStr) => /name:\s*["'][^"']*["']/.test(objStr);
    const withName = candidates.filter((c) => hasLiteralName(c.obj));
    if (withName.length > 0) {
      withName.sort((a, b) => b.obj.length - a.obj.length);
      return withName[0].obj;
    }
    candidates.sort((a, b) => b.obj.length - a.obj.length);
    return candidates[0].obj;
  }

  /**
   * 转换主要内容
   */
  convertMainContent() {
    // 提取 spec 对象（优先用括号平衡，支持 const completion / completionSpec 等任意变量名）
    let specObject = this.extractSpecObjectByBalancedBraces();
    if (!specObject) {
      // 再试一次：单次匹配 const <name>: Fig.Spec = { 并用括号平衡提取（避免全局 regex 状态问题）
      const altMatch = this.tsCode.match(/const\s+\w+\s*:\s*Fig\.Spec\s*=\s*\{/);
      if (altMatch) {
        const braceStart = altMatch.index + altMatch[0].length - 1;
        specObject = this.extractSpecObjectFromPosition(this.tsCode, braceStart);
      }
    }
    if (!specObject) {
      const specMatch = this.tsCode.match(
        /const\s+completionSpec:\s*Fig\.Spec\s*=\s*({[\s\S]*?});?\s*export\s+default/
      );
      if (!specMatch) throw new Error("Could not find Fig.Spec definition (expected const completionSpec or const <name>: Fig.Spec = { ... })");
      specObject = specMatch[1];
    }
    // 移除 TS 注释，避免生成无效 Dart（如 asr 中的 // Only uncomment...）
    specObject = this.stripCommentsFromObject(specObject);

    // 提取 name 字段来生成变量名（支持 name: "value" 或 name: 'value'）
    const nameMatch = specObject.match(/name:\s*["']([^"']+)["']/);
    const specName = nameMatch ? nameMatch[1] : "unknown";
    const variableName = this.sanitizeVariableName(specName);

    // 转换对象为 Dart（仅保留 FigSpec 支持的键，避免 isPersistent 等 TS 写法落入根 spec）
    const dartSpec = this.convertObject(specObject, 0, FIG_SPEC_ALLOWED_KEYS);

    const safeVarName =
      variableName && /^[a-zA-Z_][a-zA-Z0-9_]*$/.test(variableName)
        ? variableName
        : "completionSpec";

    let out = "";
    const indent = "  ";
    if (Object.keys(this.optionListDart).length > 0) {
      for (const [name, dartList] of Object.entries(this.optionListDart)) {
        out += `final List<Option> ${name} = ${dartList};\n\n`;
      }
    }
    if (Object.keys(this.suggestionListDart).length > 0) {
      for (const [name, dartList] of Object.entries(this.suggestionListDart)) {
        out += `final List<FigSuggestion> ${name} = ${dartList};\n\n`;
      }
    }
    if (Object.keys(this.subcommandListDart).length > 0) {
      for (const [name, dartList] of Object.entries(this.subcommandListDart)) {
        out += `final List<FigSubcommand> ${name} = ${dartList};\n\n`;
      }
    }
    out += `/// Completion spec for \`${specName}\` CLI\nfinal FigSpec ${safeVarName} = FigSpec${dartSpec};\n`;

    if (this.generatorBlocks.length > 0) {
      out += "\n// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===\n\n";
      this.generatorBlocks.forEach(({ varName, tsSource }) => {
        out += this.formatGeneratorBlockAsComment(varName, tsSource);
        out += "\n";
      });
    }

    return out;
  }

  /**
   * 将 spec name 转为合法 Dart 变量名（仅字母数字下划线）
   * 例如：@fig/publish-spec → figPublishSpecSpec，http.server → httpServerSpec
   */
  sanitizeVariableName(specName) {
    if (!specName) return "unknownSpec";
    // 已是合法 Dart 标识符则只加 Spec
    if (/^[a-zA-Z_][a-zA-Z0-9_]*$/.test(specName)) {
      return specName + "Spec";
    }
    // 去掉 @ 和 /，把 /、-、. 当分隔符，转成驼峰后加 Spec
    const s = specName
      .replace(/^[@/]+/, "")
      .replace(/[/.-]+/g, " ")
      .trim();
    const parts = s.split(/\s+/).filter(Boolean);
    const camel = parts
      .map((p, i) =>
        i === 0
          ? p.toLowerCase().replace(/^./, (c) => c.toLowerCase())
          : p.replace(/^./, (c) => c.toUpperCase())
      )
      .join("");
    const base = camel.replace(/[^a-zA-Z0-9_]/g, "") || "spec";
    const first = base[0];
    const safe = /[a-zA-Z_]/.test(first) ? base : "spec" + base;
    return safe + "Spec";
  }

  /**
   * 移除对象字符串中的单行注释（避免 // Only uncomment 等写入 Dart）
   */
  stripCommentsFromObject(objStr) {
    let out = "";
    let i = 0;
    let depth = 0;
    let inString = false;
    let stringChar = "";
    while (i < objStr.length) {
      const char = objStr[i];
      const prev = i > 0 ? objStr[i - 1] : "";
      if ((char === '"' || char === "'" || char === "`") && prev !== "\\") {
        if (!inString) {
          inString = true;
          stringChar = char;
        } else if (char === stringChar) {
          inString = false;
        }
        out += char;
        i++;
        continue;
      }
      if (!inString && char === "/" && objStr[i + 1] === "/") {
        while (i < objStr.length && objStr[i] !== "\n") i++;
        continue;
      }
      if (!inString && char === "/" && objStr[i + 1] === "*") {
        i += 2;
        while (
          i < objStr.length - 1 &&
          !(objStr[i] === "*" && objStr[i + 1] === "/")
        )
          i++;
        i += 2;
        continue;
      }
      if (!inString) {
        if (char === "{" || char === "[") depth++;
        else if (char === "}" || char === "]") depth--;
      }
      out += char;
      i++;
    }
    return out;
  }

  /**
   * 转换 JavaScript 对象为 Dart 构造函数调用
   * @param {Set<string>|null} allowedKeys - 若提供，只输出这些键（用于 Arg/Option/Subcommand/FigSuggestion）
   */
  convertObject(objStr, indentLevel = 0, allowedKeys = null) {
    const indent = "  ".repeat(indentLevel);
    const nextIndent = "  ".repeat(indentLevel + 1);

    // 移除外层大括号
    objStr = objStr.trim();
    if (objStr.startsWith("{")) {
      objStr = objStr.slice(1, -1);
    }

    let result = "(\n";
    const properties = this.parseProperties(objStr);

    // 若指定了 allowedKeys，只保留允许的键（cleanKey 后的名字）
    let propsToUse = properties;
    if (allowedKeys) {
      propsToUse = properties.filter((prop) =>
        allowedKeys.has(this.cleanKey(prop.key))
      );
    }

    // 过滤掉包含复杂类型的属性（注释回退模式下保留并输出 TS 注释 + null）
    let validProperties = propsToUse.filter((prop) => {
      const convertedValue = this.convertValue(
        prop.value,
        indentLevel + 1,
        prop.key
      );
      if (convertedValue && typeof convertedValue === "object" && convertedValue.__commentFallback) return true;
      if (typeof convertedValue === "string" && convertedValue.includes("/* TODO: Complex type */")) return false;
      if (
        allowedKeys === OPTION_ALLOWED_KEYS &&
        this.cleanKey(prop.key) === "args"
      ) {
        const v = prop.value.trim();
        if (v.startsWith('"') || v.startsWith("'")) return false;
      }
      return true;
    });

    // 同一键出现多次时只保留最后一次（与 JS 行为一致），避免解析异常时重复 args 等
    const keyLastIndex = new Map();
    validProperties.forEach((prop, idx) => {
      keyLastIndex.set(this.cleanKey(prop.key), idx);
    });
    validProperties = validProperties.filter(
      (prop, idx) => keyLastIndex.get(this.cleanKey(prop.key)) === idx
    );

    validProperties.forEach((prop, index) => {
      const { key, value } = prop;
      const convertedValue = this.convertValue(value, indentLevel + 1, key);

      if (convertedValue && typeof convertedValue === "object" && convertedValue.__commentFallback) {
        result += nextIndent + convertedValue.comment + "\n";
        result += nextIndent + `${this.toCamelCase(key)}: ` + convertedValue.dart;
      } else {
        result += nextIndent;
        result += `${this.toCamelCase(key)}: `;
        result += convertedValue;
      }

      if (index < validProperties.length - 1) {
        result += ",";
      }
      result += "\n";
    });

    result += indent + ")";
    return result;
  }

  /**
   * 解析对象属性（简化版）
   */
  parseProperties(objStr) {
    const properties = [];
    let currentKey = "";
    let currentValue = "";
    let depth = 0;
    let depthBrace = 0; // 仅 { } 的深度，用于区分「在对象内」与「在数组内」
    let depthBracket = 0;
    let inString = false;
    let stringChar = "";
    let inLineComment = false;
    let inBlockComment = false;
    let isKey = true;

    // 简化解析：逐字符分析
    for (let i = 0; i < objStr.length; i++) {
      const char = objStr[i];
      const prevChar = i > 0 ? objStr[i - 1] : "";
      const nextChar = i + 1 < objStr.length ? objStr[i + 1] : "";

      // 处理注释状态（优先级高于字符串外的符号）
      if (inLineComment) {
        if (char === "\n") {
          inLineComment = false;
          // 换行符保留在 value 中
          if (!isKey) currentValue += char;
        } else {
          if (!isKey) currentValue += char;
        }
        continue;
      }

      if (inBlockComment) {
        if (char === "*" && nextChar === "/") {
          inBlockComment = false;
          if (!isKey) currentValue += "*/";
          i++; // 跳过 /
        } else {
          if (!isKey) currentValue += char;
        }
        continue;
      }

      // 处理字符串
      if ((char === '"' || char === "'" || char === "`") && prevChar !== "\\") {
        if (!inString) {
          inString = true;
          stringChar = char;
        } else if (char === stringChar) {
          inString = false;
          // 结束引号也要记入 value/key，否则会少字符（如 "config" 变成 "confi"）
          if (isKey) currentKey += char;
          else currentValue += char;
          continue;
        }
      }

      if (inString) {
        if (isKey) {
          currentKey += char;
        } else {
          currentValue += char;
        }
        continue;
      }

      // 检查注释开始
      if (char === "/" && nextChar === "/") {
        inLineComment = true;
        if (!isKey) currentValue += "//";
        i++; // 跳过第二个 /
        continue;
      }
      if (char === "/" && nextChar === "*") {
        inBlockComment = true;
        if (!isKey) currentValue += "/*";
        i++; // 跳过 *
        continue;
      }

      // 跟踪嵌套深度（总深度 + 花括号/方括号分开）
      if (char === "{") {
        depth++;
        depthBrace++;
      } else if (char === "[") {
        depth++;
        depthBracket++;
      } else if (char === "}") {
        depth--;
        depthBrace--;
        // 仅当关闭的是「当前解析的顶层对象」时 push（depthBrace 与 depthBracket 都回 0）；否则 value 会吃掉 "}"（如 args: [ { template: ["x"] } ]）
        if (depthBrace === 0 && depthBracket === 0 && !isKey) {
          const ck = this.cleanKey(currentKey);
          if (
            ck &&
            currentValue.trim() &&
            /^[a-zA-Z_$][a-zA-Z0-9_]*$/.test(ck)
          ) {
            properties.push({ key: ck, value: currentValue.trim() });
          }
          currentKey = "";
          currentValue = "";
          isKey = true;
          continue;
        }
      } else if (char === "]") {
        depth--;
        depthBracket--;
      }

      // 处理键值分隔符（任意深度；否则嵌套对象如 parserDirectives: { a: true } 的 key 会带冒号）
      if (char === ":" && isKey) {
        isKey = false;
        currentKey = currentKey.trim();
        continue;
      }

      // 属性分隔符：在顶层或在「仅一层对象内且不在数组内」且当前 value 不是对象/数组（否则会截断 args: { name: "config", ... }）
      const valTrim = currentValue.trim();
      const atObjectLevel =
        depth === 0 ||
        (depthBrace === 1 &&
          depthBracket === 0 &&
          !valTrim.startsWith("{") &&
          !valTrim.startsWith("["));
      if (char === "," && atObjectLevel) {
        const ck = this.cleanKey(currentKey);
        if (ck && valTrim && /^[a-zA-Z_$][a-zA-Z0-9_]*$/.test(ck)) {
          properties.push({ key: ck, value: valTrim });
        }
        currentKey = "";
        currentValue = "";
        isKey = true;
        continue;
      }

      // 累积字符（对象/数组开头的 { [ 不要算进 key，否则 key 会变成 "{\n    name" 导致解析失败）
      if (isKey) {
        const skipBrace =
          (char === "{" || char === "[") && depth === 1 && currentKey === "";
        if (!skipBrace) currentKey += char;
      } else {
        currentValue += char;
      }
    }

    // 添加最后一个属性
    const ckLast = this.cleanKey(currentKey);
    if (
      ckLast &&
      currentValue.trim() &&
      /^[a-zA-Z_$][a-zA-Z0-9_]*$/.test(ckLast)
    ) {
      properties.push({ key: ckLast, value: currentValue.trim() });
    }

    return properties;
  }

  /**
   * 清理属性键
   */
  cleanKey(key) {
    const cleaned = key.trim().replace(/^["']|["']$/g, "");
    // 映射 TypeScript 属性名到 Dart 属性名
    const keyMappings = {
      default: "defaultValue", // default 是 Dart 关键字
    };
    return keyMappings[cleaned] || cleaned;
  }

  /**
   * 将 JS/TS 源码中的字符串内容按 JS 转义规则解析为实际字符序列
   * 例如 \' -> 一个单引号，\\ -> 一个反斜杠，避免在 Dart 中重复转义成 \\'
   */
  unescapeJsStringContent(raw) {
    let out = "";
    for (let i = 0; i < raw.length; i++) {
      if (raw[i] === "\\" && i + 1 < raw.length) {
        const next = raw[i + 1];
        switch (next) {
          case "'":
            out += "'";
            i++;
            break;
          case '"':
            out += '"';
            i++;
            break;
          case "\\":
            out += "\\";
            i++;
            break;
          case "n":
            out += "\n";
            i++;
            break;
          case "r":
            out += "\r";
            i++;
            break;
          case "t":
            out += "\t";
            i++;
            break;
          case "x":
            if (
              i + 3 < raw.length &&
              /^[0-9a-fA-F]{2}$/.test(raw.slice(i + 2, i + 4))
            ) {
              out += String.fromCharCode(parseInt(raw.slice(i + 2, i + 4), 16));
              i += 3;
            } else {
              out += raw[i];
            }
            break;
          case "u":
            if (
              i + 5 < raw.length &&
              /^[0-9a-fA-F]{4}$/.test(raw.slice(i + 2, i + 6))
            ) {
              out += String.fromCharCode(parseInt(raw.slice(i + 2, i + 6), 16));
              i += 5;
            } else {
              out += raw[i];
            }
            break;
          default:
            out += raw[i];
            break;
        }
      } else {
        out += raw[i];
      }
    }
    return out;
  }

  /**
   * 将实际字符序列转义为 Dart 单引号字符串内容。
   * Dart 单引号字符串中：必须用 \n \r \t 表示换行/回车/制表，不能写真实控制符（否则破坏源码行）；
   * 此外 \ -> \\, ' -> \', $ -> \$
   */
  escapeDartSingleQuoted(content) {
    return content
      .replace(/\\/g, "\\\\")
      .replace(/'/g, "\\'")
      .replace(/\$/g, "\\$")
      .replace(/\n/g, "\\n")
      .replace(/\r/g, "\\r")
      .replace(/\t/g, "\\t");
  }

  /**
   * 转换值
   *
   * @param {string} value - 值字符串
   * @param {number} indentLevel - 缩进级别
   * @param {string} propertyName - 属性名（用于上下文判断）
   */
  convertValue(value, indentLevel, propertyName = "") {
    value = value.trim();

    // 字符串
    if (value.startsWith('"') || value.startsWith("'")) {
      const rawContent = value.slice(1, -1);
      const content = this.unescapeJsStringContent(rawContent);
      const stringContent = this.escapeDartSingleQuoted(content);
      return `'${stringContent}'`;
    }

    // 布尔值
    if (value === "true" || value === "false") {
      return value;
    }

    // 数字
    if (/^\d+$/.test(value)) {
      return value;
    }

    // 顶层 Option[] / Suggestion[] 变量引用：options: installOptions 或 suggestions: mySuggestions
    const idMatch = value.match(/^([a-zA-Z_][a-zA-Z0-9_]*)$/);
    if (idMatch) {
      const id = idMatch[1];
      const isOptionsProp = ["options", "suggestions", "additionalSuggestions"].includes(this.cleanKey(propertyName));
      if (isOptionsProp && this.optionListVarNames.has(id)) return id;
      if (isOptionsProp && this.suggestionListVarNames.has(id)) return id;
      if (this.cleanKey(propertyName) === "subcommands" && this.subcommandListVarNames.has(id)) return id;
    }

    // generators 引用: gitGenerators.xxx → gitGenerators['xxx']（便于后续实现 Map）
    const gitGenMatch = value.match(/^gitGenerators\.([a-zA-Z_][a-zA-Z0-9_]*)$/);
    if (gitGenMatch && (propertyName === "generators" || this.cleanKey(propertyName) === "generators")) {
      return `gitGenerators['${gitGenMatch[1]}']`;
    }

    // sharedCommands 引用: sharedCommands.xxx → sharedCommands['xxx']!
    const sharedCmdMatch = value.match(/^sharedCommands\.([a-zA-Z_][a-zA-Z0-9_]*)$/);
    if (sharedCmdMatch) {
      return `sharedCommands['${sharedCmdMatch[1]}']!`;
    }

    // 数组（若 value 尾部落入外层对象的 "}" 会被 parseProperties 吃进，先剥掉再转，避免 template: ["filepaths"] 变成 ["filepaths"] } 少 ]）
    if (value.startsWith("[")) {
      value = value.replace(/\}\s*$/, "").trim();
      // 若解析时漏掉了末尾的 ]（如嵌套在 args 内时），补全以保证 convertArray 收到合法数组串
      let bracketDepth = 0;
      for (const c of value) {
        if (c === "[") bracketDepth++;
        else if (c === "]") bracketDepth--;
      }
      if (bracketDepth > 0) value = value + "]".repeat(bracketDepth);
      return this.convertArray(value, indentLevel, propertyName);
    }

    // parserDirectives: 输出 ParserDirectives(...) 以匹配 dart/lib/src/spec.dart 中的类型
    if (propertyName === "parserDirectives" && value.startsWith("{")) {
      return this.convertParserDirectives(value, indentLevel);
    }

    // filterStrategy: 字符串转枚举，便于类型检查
    if (
      propertyName === "filterStrategy" &&
      (value.startsWith('"') || value.startsWith("'"))
    ) {
      const v = value.slice(1, -1).toLowerCase();
      if (v === "fuzzy") return "FilterStrategy.fuzzy";
      if (v === "prefix") return "FilterStrategy.prefix";
      if (v === "default") return "FilterStrategy.defaultStrategy";
    }

    // 对象
    if (value.startsWith("{")) {
      // argsItem 为 args 数组元素上下文，必须显式输出 Arg(...)，因 Dart 的 args 是 dynamic 无法推断
      const context = [
        "args",
        "argsItem",
        "suggestions",
        "options",
        "subcommands",
      ].includes(propertyName)
        ? propertyName
        : "";
      const res = this.detectObjectType(value, indentLevel, context);
      // 仅当顶层 args 为单对象时包成 [Arg(...)]；数组元素在 convertArray 中用 argsItem 不包
      if (propertyName === "args") {
        const indent = "  ".repeat(indentLevel);
        const nextIndent = "  ".repeat(indentLevel + 1);
        return "[\n" + nextIndent + res + "\n" + indent + "]";
      }
      return res;
    }

    // 函数或其他复杂类型
    if (this.commentFallback) {
      return {
        __commentFallback: true,
        comment: this.formatUnconvertedComment(value, propertyName || this.cleanKey(propertyName)),
        dart: "null",
      };
    }
    return "/* TODO: Complex type */";
  }

  /**
   * 判断是否为字符串字面量（单引号或双引号包裹）
   */
  isStringLiteral(s) {
    const t = s.trim();
    return (
      (t.startsWith('"') && t.endsWith('"')) ||
      (t.startsWith("'") && t.endsWith("'"))
    );
  }

  /**
   * 转换数组
   */
  convertArray(arrStr, indentLevel, propertyName = "") {
    const indent = "  ".repeat(indentLevel);
    const nextIndent = "  ".repeat(indentLevel + 1);

    // 移除方括号
    const inner = arrStr.slice(1, -1).trim();

    if (!inner) {
      return "[]";
    }

    const items = this.splitArrayItems(inner)
      .map((it) => it.trim())
      .filter((it) => it);

    // suggestions / additionalSuggestions 在 Dart 里统一为 List<FigSuggestion>?：字符串 → FigSuggestion(name: 'x')，对象 → FigSuggestion(...)，...varName → spread
    if (
      (propertyName === "suggestions" || propertyName === "additionalSuggestions") &&
      items.length > 0
    ) {
      const hasSpread = items.some((it) => it.trim().startsWith("..."));
      if (!hasSpread) {
        let out = "[\n";
        let needComma = false;
        items.forEach((item) => {
          let line = "";
          if (this.isStringLiteral(item)) {
            const rawContent = item.slice(1, -1);
            const content = this.unescapeJsStringContent(rawContent);
            const escaped = this.escapeDartSingleQuoted(content);
            line = nextIndent + "FigSuggestion(name: '" + escaped + "')";
          } else if (item.startsWith("{")) {
            line = nextIndent + this.detectObjectType(item, indentLevel + 1, "suggestions");
          }
          if (!line) return;
          if (needComma) out += ",";
          out += "\n" + line;
          needComma = true;
        });
        out += "\n" + indent + "]";
        return out;
      }
    }

    // 简单数组（字符串，非 suggestions）
    if ((inner.includes('"') || inner.includes("'")) && !inner.includes("{")) {
      let out = arrStr.replace(/"/g, "'");
      if (!out.trimEnd().endsWith("]")) out = out.trimEnd() + "]";
      return out;
    }

    // description 数组：TS 中常为多行 .join("\n")，输出为 Dart 单字符串（或保留列表由类型 dynamic 接受）
    if (
      propertyName === "description" &&
      items.length > 0 &&
      items.every((it) => this.isStringLiteral(it))
    ) {
      const parts = items.map((it) => {
        const raw = it.slice(1, -1);
        const content = this.unescapeJsStringContent(raw);
        return this.escapeDartSingleQuoted(content);
      });
      return (
        "[\n" +
        nextIndent +
        parts.map((p) => "'" + p + "'").join(",\n" + nextIndent) +
        "\n" +
        indent +
        "]"
      );
    }

    // args 数组元素：用 argsItem 避免每个元素被再包一层 []
    const childKey = propertyName === "args" ? "argsItem" : propertyName;

    const isSpreadOfKnownOptionVar = (it) => {
      const t = it.trim();
      if (!t.startsWith("...")) return false;
      const name = t.slice(3).trim();
      return this.optionListVarNames.has(name);
    };
    const isSpreadOfKnownSuggestionVar = (it) => {
      const t = it.trim();
      if (!t.startsWith("...")) return false;
      const name = t.slice(3).trim();
      return this.suggestionListVarNames.has(name);
    };
    const isSpreadOfKnownSubcommandVar = (it) => {
      const t = it.trim();
      if (!t.startsWith("...")) return false;
      const name = t.slice(3).trim();
      return this.subcommandListVarNames.has(name);
    };

    // 过滤掉复杂类型（注释回退模式下保留并输出 TS 注释 + null）；...varName 若为已知 Option/Suggestion/Subcommand 列表变量则保留
    const validItems = items.filter((item) => {
      const t = item.trim();
      if (propertyName === "options" && isSpreadOfKnownOptionVar(t)) return true;
      if ((propertyName === "suggestions" || propertyName === "additionalSuggestions") && isSpreadOfKnownSuggestionVar(t)) return true;
      if (propertyName === "subcommands" && isSpreadOfKnownSubcommandVar(t)) return true;
      const converted = this.convertValue(t, indentLevel + 1, childKey);
      if (converted && typeof converted === "object" && converted.__commentFallback) return true;
      return typeof converted !== "string" || !converted.includes("/* TODO: Complex type */");
    });

    // 如果所有元素都被过滤掉了，返回空数组
    if (validItems.length === 0) {
      return "[]";
    }

    let result = "[\n";
    let needComma = false;
    validItems.forEach((item, index) => {
      const t = item.trim();
      let line = "";
      if (propertyName === "options" && isSpreadOfKnownOptionVar(t)) {
        line = nextIndent + t;
      } else if ((propertyName === "suggestions" || propertyName === "additionalSuggestions") && isSpreadOfKnownSuggestionVar(t)) {
        line = nextIndent + t;
      } else if (propertyName === "subcommands" && isSpreadOfKnownSubcommandVar(t)) {
        line = nextIndent + t;
      } else {
        const converted = this.convertValue(t, indentLevel + 1, childKey);
        if (converted && typeof converted === "object" && converted.__commentFallback) {
          line = nextIndent + converted.comment + "\n" + nextIndent + converted.dart;
        } else if (typeof converted === "string" && converted.trim() === "") {
          return;
        } else {
          line = nextIndent + converted;
        }
      }
      if (needComma) result += ",";
      result += "\n" + line;
      needComma = true;
    });
    result += "\n" + indent + "]";

    return result;
  }

  /**
   * 将 TS 的 parserDirectives 对象转为 Dart ParserDirectives(...) 构造函数调用
   */
  convertParserDirectives(objStr, indentLevel) {
    const indent = "  ".repeat(indentLevel);
    const nextIndent = "  ".repeat(indentLevel + 1);
    const inner = objStr.trim().slice(1, -1).trim();
    if (!inner) return "ParserDirectives()";
    const properties = this.parseProperties("{" + inner + "}");
    const knownKeys = ["flagsArePosixNoncompliant", "optionsMustPrecedeArguments"];
    const pairs = [];
    for (const p of properties) {
      if (!p.key || !knownKeys.includes(p.key)) continue;
      // 最后一项的 value 可能被 parseProperties 误包含结尾的 "}"，先去掉
      let val = p.value
        .trim()
        .replace(/,\s*$/, "")
        .replace(/\}?\s*$/, "")
        .trim();
      if (val === "true" || val === "false") {
        pairs.push(nextIndent + p.key + ": " + val);
      } else if (/^\d+$/.test(val)) {
        pairs.push(nextIndent + p.key + ": " + val);
      } else if (val.startsWith('"') || val.startsWith("'")) {
        const raw = val.slice(1, -1);
        const content = this.unescapeJsStringContent(raw);
        pairs.push(
          nextIndent +
            p.key +
            ": '" +
            this.escapeDartSingleQuoted(content) +
            "'"
        );
      }
    }
    if (pairs.length === 0) return "ParserDirectives()";
    return "ParserDirectives(\n" + pairs.join(",\n") + "\n" + indent + ")";
  }

  /**
   * 将 TS 对象转为 Dart Map 字面量（用于其他需要 Map 的字段）
   */
  convertObjectToMapLiteral(objStr, indentLevel) {
    const indent = "  ".repeat(indentLevel);
    const nextIndent = "  ".repeat(indentLevel + 1);
    const inner = objStr.trim().slice(1, -1).trim();
    if (!inner) return "{}";
    const properties = this.parseProperties("{" + inner + "}");
    const pairs = properties
      .filter((p) => p.key && p.value.trim())
      .map((p) => {
        const key = "'" + this.escapeDartSingleQuoted(p.key) + "'";
        let val = p.value.trim().replace(/,\s*$/, "").trim();
        if (val === "true" || val === "false")
          return nextIndent + key + ": " + val;
        if (/^\d+$/.test(val)) return nextIndent + key + ": " + val;
        if (val.startsWith('"') || val.startsWith("'")) {
          const raw = val.slice(1, -1);
          const content = this.unescapeJsStringContent(raw);
          return (
            nextIndent +
            key +
            ": '" +
            this.escapeDartSingleQuoted(content) +
            "'"
          );
        }
        return nextIndent + key + ": " + val;
      });
    return "{\n" + pairs.join(",\n") + "\n" + indent + "}";
  }

  /**
   * 分割数组项（简化版）
   */
  splitArrayItems(str) {
    const items = [];
    let current = "";
    let depth = 0;
    let inString = false;
    let stringChar = "";

    for (let i = 0; i < str.length; i++) {
      const char = str[i];
      const prevChar = i > 0 ? str[i - 1] : "";

      // 与 parseProperties 一致：支持双引号、单引号、反引号（模板字符串），避免字符串内 , } 破坏分割
      if ((char === '"' || char === "'" || char === "`") && prevChar !== "\\") {
        if (!inString) {
          inString = true;
          stringChar = char;
        } else if (char === stringChar) {
          inString = false;
        }
      }

      if (!inString) {
        if (char === "{" || char === "[") depth++;
        if (char === "}" || char === "]") depth--;

        if (char === "," && depth === 0) {
          const trimmed = current.trim();
          if (trimmed) {
            items.push(trimmed);
          }
          current = "";
          continue;
        }
      }

      current += char;
    }

    const trimmed = current.trim();
    if (trimmed) {
      items.push(trimmed);
    }

    return items;
  }

  /**
   * 检测对象类型并转换（根据上下文）
   *
   * @param {string} objStr - 对象字符串
   * @param {number} indentLevel - 缩进级别
   * @param {string} context - 上下文提示 ('args', 'options', 'subcommands', etc.)
   */
  detectObjectType(objStr, indentLevel, context = "") {
    const obj = objStr.trim();

    // 如果在 args 上下文中（含 args 数组元素 argsItem），直接返回 Arg
    if (context === "args" || context === "argsItem") {
      return "Arg" + this.convertObject(obj, indentLevel, ARG_ALLOWED_KEYS);
    }

    // 如果在 options 数组中，一律视为 Option（避免 name 无 - 时被误判为 Subcommand）
    if (context === "options") {
      return (
        "Option" + this.convertObject(obj, indentLevel, OPTION_ALLOWED_KEYS)
      );
    }

    // 如果在 subcommands 数组中，一律视为 Subcommand
    if (context === "subcommands") {
      return (
        "Subcommand" +
        this.convertObject(obj, indentLevel, SUBCOMMAND_ALLOWED_KEYS)
      );
    }

    // 如果在 suggestions 数组中，对象视为 FigSuggestion（避免误判为 Subcommand）
    if (context === "suggestions") {
      return (
        "FigSuggestion" +
        this.convertObject(obj, indentLevel, FIG_SUGGESTION_ALLOWED_KEYS)
      );
    }

    // Generator 形对象（script/template/postProcess）→ Generator(...)，避免被转成 Record 语法
    if (
      (obj.includes("script:") || obj.includes("postProcess:") || (obj.includes("template:") && !obj.includes("subcommands:"))) &&
      !obj.includes("subcommands:")
    ) {
      return (
        "Generator" +
        this.convertObject(obj, indentLevel, GENERATOR_ALLOWED_KEYS)
      );
    }

    // 提取 name 字段的值来辅助判断
    const nameMatch = obj.match(/name:\s*(\[|["'])/);
    let nameValue = "";
    if (nameMatch) {
      if (nameMatch[1] === "[") {
        // 数组格式：name: ['--opt', '-o']
        const arrayMatch = obj.match(/name:\s*\[(.*?)\]/);
        if (arrayMatch) {
          // 提取数组的第一个元素
          const firstElemMatch = arrayMatch[1].match(/["']([^"']+)["']/);
          if (firstElemMatch) {
            nameValue = firstElemMatch[1];
          }
        }
      } else {
        // 字符串格式：name: '--opt' 或 name: "subcommand"
        const stringMatch = obj.match(/name:\s*["']([^"']+)["']/);
        if (stringMatch) {
          nameValue = stringMatch[1];
        }
      }
    }

    // 优先级 1：检测是否是 option（name 以 - 开头） - 最高优先级！
    if (
      nameValue &&
      (nameValue.startsWith("--") || nameValue.startsWith("-"))
    ) {
      return (
        "Option" + this.convertObject(obj, indentLevel, OPTION_ALLOWED_KEYS)
      );
    }

    // 优先级 2：检测是否是 subcommand（包含 subcommands 字段）
    if (obj.includes("subcommands:")) {
      return (
        "Subcommand" +
        this.convertObject(obj, indentLevel, SUBCOMMAND_ALLOWED_KEYS)
      );
    }

    // 优先级 3：检测是否是 subcommand（包含 name 和 description，但 name 不以 - 开头）
    if (
      obj.includes("name:") &&
      obj.includes("description:") &&
      !nameValue.startsWith("-")
    ) {
      return (
        "Subcommand" +
        this.convertObject(obj, indentLevel, SUBCOMMAND_ALLOWED_KEYS)
      );
    }

    // 优先级 4：检测是否是 arg（包含 template 或 isOptional 或 isVariadic，且没有 subcommands/options）
    if (
      (obj.includes("template:") ||
        obj.includes("isOptional:") ||
        obj.includes("isVariadic:") ||
        obj.includes("generators:")) &&
      !obj.includes("subcommands:") &&
      !obj.includes("options:")
    ) {
      return "Arg" + this.convertObject(obj, indentLevel, ARG_ALLOWED_KEYS);
    }

    // 优先级 5：如果只有 name 字段，且不以 - 开头，可能是 Arg
    if (
      obj.includes("name:") &&
      !nameValue.startsWith("-") &&
      !obj.includes("subcommands:") &&
      !obj.includes("options:")
    ) {
      return "Arg" + this.convertObject(obj, indentLevel, ARG_ALLOWED_KEYS);
    }

    // 默认为 Map
    return this.convertObject(obj, indentLevel);
  }

  /**
   * 转换为驼峰命名
   */
  toCamelCase(str) {
    // 已经是驼峰的不变
    return str;
  }
}

/**
 * 快速转换函数（供外部调用）
 * @param {string} tsFilePath - 源 TS 文件路径
 * @param {string} tsCode - 源 TS 源码
 * @param {{ commentFallback?: boolean }} [options] - commentFallback: 复杂类型不抛错，用 // TS_UNCONVERTED_* 注释保留原 TS
 */
function convertTsToDart(tsFilePath, tsCode, options = {}) {
  const converter = new TsToDartConverter(tsFilePath, tsCode, options);
  return converter.convert();
  // 不要捕获错误，让 isComplexFile 等属性传递到上层
}

module.exports = { TsToDartConverter, convertTsToDart };
