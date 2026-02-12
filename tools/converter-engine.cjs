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
]);

/**
 * TypeScript Fig.Spec 转换器
 */
class TsToDartConverter {
  constructor(tsFilePath, tsCode) {
    this.tsFilePath = tsFilePath;
    this.tsCode = tsCode;
    this.imports = new Set();
    this.complexityWarnings = []; // 收集复杂类型警告
    this.hasComplexTypes = false; // 标记是否包含复杂类型
  }

  /**
   * 主转换入口
   */
  convert() {
    // 先检测是否包含复杂类型
    this.detectComplexity();

    // 如果包含复杂类型，抛出错误
    if (this.hasComplexTypes) {
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

    // 3. 提取并转换主要内容
    dartCode += this.convertMainContent();

    return dartCode;
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
   * 用括号平衡提取 spec 对象，避免用「第一个 };」截断导致 args: { name: "config" } 等被截成 "confi"
   */
  extractSpecObjectByBalancedBraces() {
    const prefix = /const\s+completionSpec:\s*Fig\.Spec\s*=\s*/.exec(this.tsCode);
    if (!prefix) return null;
    let i = prefix.index + prefix[0].length;
    if (this.tsCode[i] !== "{") return null;
    let depth = 0;
    let inString = false;
    let stringChar = "";
    const start = i;
    for (; i < this.tsCode.length; i++) {
      const c = this.tsCode[i];
      const prev = i > 0 ? this.tsCode[i - 1] : "";
      if (!inString) {
        if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
          inString = true;
          stringChar = c;
        } else if (c === "{") depth++;
        else if (c === "}") {
          depth--;
          if (depth === 0) return this.tsCode.slice(start, i + 1);
        }
      } else if (c === stringChar && prev !== "\\") inString = false;
    }
    return null;
  }

  /**
   * 转换主要内容
   */
  convertMainContent() {
    // 提取 completionSpec 对象（优先用括号平衡，避免截断）
    let specObject = this.extractSpecObjectByBalancedBraces();
    if (!specObject) {
      const specMatch = this.tsCode.match(
        /const\s+completionSpec:\s*Fig\.Spec\s*=\s*({[\s\S]*?});?\s*export\s+default/
      );
      if (!specMatch) throw new Error("Could not find completionSpec definition");
      specObject = specMatch[1];
    }
    // 移除 TS 注释，避免生成无效 Dart（如 asr 中的 // Only uncomment...）
    specObject = this.stripCommentsFromObject(specObject);

    // 提取 name 字段来生成变量名（支持 name: "value" 或 name: 'value'）
    const nameMatch = specObject.match(/name:\s*["']([^"']+)["']/);
    const specName = nameMatch ? nameMatch[1] : "unknown";
    const variableName = this.sanitizeVariableName(specName);

    // 转换对象为 Dart
    const dartSpec = this.convertObject(specObject, 0);

    const safeVarName =
      variableName && /^[a-zA-Z_][a-zA-Z0-9_]*$/.test(variableName)
        ? variableName
        : "completionSpec";
    return `/// Completion spec for \`${specName}\` CLI\nfinal FigSpec ${safeVarName} = FigSpec${dartSpec};\n`;
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

    // 过滤掉包含复杂类型的属性；Option 的 args 必须是对象/数组，不能是字符串
    let validProperties = propsToUse.filter((prop) => {
      const convertedValue = this.convertValue(
        prop.value,
        indentLevel + 1,
        prop.key
      );
      if (convertedValue.includes("/* TODO: Complex type */")) return false;
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

      result += nextIndent;
      result += `${this.toCamelCase(key)}: `;
      result += this.convertValue(value, indentLevel + 1, key);

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
    let isKey = true;

    // 简化解析：逐字符分析
    for (let i = 0; i < objStr.length; i++) {
      const char = objStr[i];
      const prevChar = i > 0 ? objStr[i - 1] : "";

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

      // 在顶层跳过单行注释，避免把 // Only uncomment 等写入 Dart
      if (depth === 0 && char === "/" && objStr[i + 1] === "/") {
        while (i < objStr.length && objStr[i] !== "\n") i++;
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

    // 数组（若 value 尾部落入外层对象的 "}" 会被 parseProperties 吃进，先剥掉再转，避免 template: ["filepaths"] 变成 ["filepaths"] } 少 ]）
    if (value.startsWith("[")) {
      value = value.replace(/\}\s*$/, "").trim();
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
      .filter((it) => it && !it.startsWith("..."));

    // suggestions / additionalSuggestions 在 Dart 里统一为 List<FigSuggestion>?：字符串 → FigSuggestion(name: 'x')，对象 → FigSuggestion(...)
    if (
      (propertyName === "suggestions" || propertyName === "additionalSuggestions") &&
      items.length > 0
    ) {
      let out = "[\n";
      items.forEach((item, idx) => {
        if (this.isStringLiteral(item)) {
          const rawContent = item.slice(1, -1);
          const content = this.unescapeJsStringContent(rawContent);
          const escaped = this.escapeDartSingleQuoted(content);
          out += nextIndent + "FigSuggestion(name: '" + escaped + "')";
        } else if (item.startsWith("{")) {
          out +=
            nextIndent +
            this.detectObjectType(item, indentLevel + 1, "suggestions");
        }
        if (idx < items.length - 1) out += ",";
        out += "\n";
      });
      out += indent + "]";
      return out;
    }

    // 简单数组（字符串，非 suggestions）
    if ((inner.includes('"') || inner.includes("'")) && !inner.includes("{")) {
      return arrStr.replace(/"/g, "'");
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

    // 过滤掉复杂类型
    const validItems = items.filter((item) => {
      const converted = this.convertValue(
        item.trim(),
        indentLevel + 1,
        childKey
      );
      return !converted.includes("/* TODO: Complex type */");
    });

    // 如果所有元素都被过滤掉了，返回空数组
    if (validItems.length === 0) {
      return "[]";
    }

    let result = "[\n";
    validItems.forEach((item, index) => {
      result += nextIndent;
      result += this.convertValue(item.trim(), indentLevel + 1, childKey);
      if (index < validItems.length - 1) {
        result += ",";
      }
      result += "\n";
    });
    result += indent + "]";

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
          // 跳过扩展运算符（...xxx）
          if (trimmed && !trimmed.startsWith("...")) {
            items.push(current);
          }
          current = "";
          continue;
        }
      }

      current += char;
    }

    const trimmed = current.trim();
    // 跳过扩展运算符（...xxx）
    if (trimmed && !trimmed.startsWith("...")) {
      items.push(current);
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
 */
function convertTsToDart(tsFilePath, tsCode) {
  const converter = new TsToDartConverter(tsFilePath, tsCode);
  return converter.convert();
  // 不要捕获错误，让 isComplexFile 等属性传递到上层
}

module.exports = { TsToDartConverter, convertTsToDart };
