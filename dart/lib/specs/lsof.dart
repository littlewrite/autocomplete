// AI-generated from TypeScript source: lsof.ts
import 'package:autocomplete/src/spec.dart';

final completionSpec = FigSpec(
  name: "lsof",
  description: "List open files",
  args: FigArg(
    name: "names",
    description: "Select named files or files on named file systems",
    template: ["folders"],
    isVariadic: true,
    isOptional: true,
  ),
  options: [
    FigOption(
      name: ["-?", "-h", "--help"],
      description: "Help",
    ),
    FigOption(
      name: ["-a"],
      description: "Apply AND to the selections (defaults to OR)",
    ),
    FigOption(
      name: ["-b"],
      description: "Avoid kernel blocks",
    ),
    FigOption(
      name: ["-c"],
      description:
          "Select the listing of files for processes executing a command",
      args: FigArg(
        name: "string or regexp (optional ending with /i /b /x)",
      ),
    ),
    FigOption(
      name: ["+c"],
      description: "COMMAND width (9)",
      args: FigArg(
        name: "number",
      ),
    ),
    FigOption(
      name: ["+d"],
      description:
          "Search for all open instances/files/directories of directory",
      args: FigArg(
        name: "file",
        template: ["folders"],
      ),
    ),
    FigOption(
      name: ["-d"],
      description:
          "Specify a list of file descriptors (FDs) to exclude from or include in the output listing",
      args: FigArg(
        name: "File descriptor number",
      ),
    ),
    FigOption(
      name: ["+D"],
      description:
          "Search tree for all open instances/files/directories of directory. *SLOW?*",
      args: FigArg(
        name: "file",
        template: ["folders"],
      ),
    ),
    FigOption(
      name: ["+f"],
      description: "Enable path name arguments to be interpreted",
      args: FigArg(
        isOptional: true,
        name: "flags",
        suggestions: [
          FigSuggestion(
            name: "c",
            description: "File structure use count",
          ),
          FigSuggestion(
            name: "g",
            description: "File flag abbreviations",
          ),
          FigSuggestion(
            name: "G",
            description: "File flags in hexadecimal",
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-f"],
      description: "Inhibit path name arguments to be interpreted",
      args: FigArg(
        name: "flags",
        suggestions: [
          FigSuggestion(
            name: "c",
            description: "File structure use count",
          ),
          FigSuggestion(
            name: "g",
            description: "File flag abbreviations",
          ),
          FigSuggestion(
            name: "G",
            description: "File flags in hexadecimal",
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-F"],
      description: "Select fields to output",
      args: FigArg(
        name: "options",
        isVariadic: true,
        suggestions: [
          FigSuggestion(
              name: "a",
              description: "Access: r = read; w = write; u = read/write"),
          FigSuggestion(name: "c", description: "Command name"),
          FigSuggestion(name: "C", description: "File struct share count"),
          FigSuggestion(name: "d", description: "Device character code"),
          FigSuggestion(
              name: "D", description: "Major/minor device number as 0x<hex>"),
          FigSuggestion(
              name: "f", description: "File descriptor (always selected)"),
          FigSuggestion(name: "G", description: "File flaGs"),
          FigSuggestion(name: "i", description: "Inode number"),
          FigSuggestion(name: "k", description: "Link count"),
          FigSuggestion(name: "K", description: "Task ID (TID)"),
          FigSuggestion(
              name: "l",
              description: "Lock: r/R = read; w/W = write; u = read/write"),
          FigSuggestion(name: "L", description: "Login name"),
          FigSuggestion(
              name: "m", description: "Marker between repeated output"),
          FigSuggestion(name: "M", description: "Task comMand name"),
          FigSuggestion(
              name: "n", description: "Comment, name, Internet addresses"),
          FigSuggestion(
              name: "o", description: "File offset as 0t<dec> or 0x<hex>"),
          FigSuggestion(name: "p", description: "Process ID (PID)"),
          FigSuggestion(name: "g", description: "Process group ID (PGID)"),
          FigSuggestion(name: "P", description: "Protocol name"),
          FigSuggestion(name: "r", description: "Raw device number as 0x<hex>"),
          FigSuggestion(name: "R", description: "PaRent PID"),
          FigSuggestion(name: "s", description: "File size"),
          FigSuggestion(
              name: "S", description: "Stream module and device names"),
          FigSuggestion(name: "t", description: "File type"),
          FigSuggestion(name: "T", description: "TCP/TPI info"),
          FigSuggestion(name: "u", description: "User ID (UID)"),
          FigSuggestion(
              name: "0",
              description: "(zero) use NUL field terminator instead of N"),
        ],
      ),
    ),
    FigOption(
      name: ["-F?"],
      description: "Show fields for -F",
    ),
    FigOption(
      name: ["-g"],
      description: "Exclude or select by process group IDs (PGID)",
      args: FigArg(
        name: "PGID",
        description: "Process Group ID (comma separated)",
      ),
    ),
    FigOption(
      name: ["-i"],
      description:
          "Selects files by [46][protocol][@hostname|hostaddr][:service|port]",
      args: FigArg(
        name: "options",
        generators: [
          FigGenerator(
            script: ["echo"],
            postProcess: (String out, [List<String>? tokens]) {
              const startParams = ["4", "6"];
              return startParams
                  .map((param) => FigSuggestion(name: param))
                  .toList();
            },
          ),
          FigGenerator(
            script: ["echo"],
            postProcess: (String out, [List<String>? tokens]) {
              final validTokens = tokens ?? [];
              const startParams = ["tcp", "udp", "TCP", "UDP"];
              final tokenMatch1 = validTokens.length > 1
                  ? RegExp(r'^(-i[46])').firstMatch(validTokens[1])
                  : null;
              final tokenMatch2 = validTokens.length > 2
                  ? RegExp(r'^[46]').firstMatch(validTokens[2])
                  : null;

              String prefix = "";
              if (tokenMatch1 != null) {
                prefix = tokenMatch1.group(1)!;
              } else if (tokenMatch2 != null) {
                prefix = tokenMatch2.group(0)!;
              }

              return startParams
                  .map((param) => FigSuggestion(name: prefix + param))
                  .toList();
            },
          ),
          FigGenerator(
            script: ["ifconfig"],
            trigger: "@",
            postProcess: (String out, [List<String>? tokens]) {
              final validTokens = tokens ?? [];
              final ips = out
                  .split("\n")
                  .where((line) => line.contains(RegExp(r'inet\b')))
                  .map((line) {
                    final parts = line.trim().split(" ");
                    return parts.length > 1 ? parts[1] : "";
                  })
                  .where((ip) => ip.isNotEmpty)
                  .toList();

              String token = "@";
              if (validTokens.length > 1 &&
                  validTokens[1].contains(RegExp("@[^:]*\$"))) {
                token = validTokens[1];
              } else if (validTokens.length > 2 &&
                  validTokens[2].contains(RegExp("@[^:]*\$"))) {
                token = validTokens[2];
              }

              final prefix = token.split("@")[0] + "@";
              return ips.map((ip) => FigSuggestion(name: prefix + ip)).toList();
            },
          ),
          FigGenerator(
            script: ["echo"],
            trigger: ":",
            postProcess: (String out, [List<String>? tokens]) {
              final validTokens = tokens ?? [];
              const colonParams = ["http", "https", "who", "time"];
              String token = ":";
              if (validTokens.length > 1 &&
                  validTokens[1].contains(RegExp(":[^:]*"))) {
                token = validTokens[1];
              } else if (validTokens.length > 2 &&
                  validTokens[2].contains(RegExp(":[^:]+"))) {
                token = validTokens[2];
              }
              final prefix = token.split(":")[0] + ":";

              return colonParams
                  .map((param) => FigSuggestion(name: prefix + param))
                  .toList();
            },
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-l"],
      description: "Inhibit conversion of user IDs to login names",
    ),
    FigOption(
      name: ["+L"],
      description: "Enable listing of file link counts",
      args: FigArg(
        isOptional: true,
        name: "number",
      ),
    ),
    FigOption(
      name: ["-L"],
      description: "Disable listing of file link counts",
      args: FigArg(
        isOptional: true,
        name: "number",
      ),
    ),
    FigOption(
      name: ["+M"],
      description: "Enable portMap registration",
    ),
    FigOption(
      name: ["-M"],
      description: "Disable portMap registration",
    ),
    FigOption(
      name: ["-n"],
      description: "No host names",
    ),
    FigOption(
      name: ["-N"],
      description: "Select NFS files",
    ),
    FigOption(
      name: ["-o"],
      description: "List file offset",
    ),
    FigOption(
      name: ["-O"],
      description: "No overhead *RISKY*",
    ),
    FigOption(
      name: ["-p"],
      description: "Exclude or select process identification numbers (PIDs)",
      args: FigArg(
        name: "PIDs",
        description: "PIDs to select or exclude ( with ^)",
      ),
    ),
    FigOption(
      name: ["-P"],
      description: "No port names",
    ),
    FigOption(
      name: ["+r"],
      description: "Repeat every t seconds (15) until no files",
      args: FigArg(
        name: "time (seconds)",
        description: "Time per repeat",
      ),
    ),
    FigOption(
      name: ["-r"],
      description: "Repeat every t seconds (15) forever",
      args: FigArg(
        name: "time (seconds)",
        description: "Time per repeat",
      ),
    ),
    FigOption(
      name: ["-R"],
      description: "List parent PID",
    ),
    FigOption(
      name: ["-s"],
      description: "List file size or exclude/select protocol",
      args: FigArg(
        isOptional: true,
        name: "protocol:state",
      ),
    ),
    FigOption(
      name: ["-S"],
      description: "Stat timeout in seconds (lstat/readlink/stat)",
      args: FigArg(
        isOptional: true,
        name: "timeout (seconds)",
      ),
    ),
    FigOption(
      name: ["-T"],
      description: "Disable TCP/TPI info",
      args: FigArg(
        name: "info",
        suggestions: [
          FigSuggestion(
            name: "f",
            description:
                "Selects reporting of socket options/states/values and tcp flag values",
          ),
          FigSuggestion(
              name: "q", description: "Selects queue length reporting"),
          FigSuggestion(
              name: "s", description: "Selects connection state reporting"),
          FigSuggestion(
              name: "w", description: "Selects window size reporting"),
          FigSuggestion(name: "", description: "Disables info"),
        ],
      ),
    ),
    FigOption(
      name: ["-t"],
      description: "Specify terse listing",
    ),
    FigOption(
      name: ["-u"],
      description: "Exclude/select login|UID set",
      args: FigArg(
        name: "UIDs",
      ),
    ),
    FigOption(
      name: ["-U"],
      description: "Select Unix socket",
    ),
    FigOption(
      name: ["-v"],
      description: "List version info",
    ),
    FigOption(
      name: ["-V"],
      description: "Verbose search",
    ),
    FigOption(
      name: ["+w"],
      description: "Enable warnings",
    ),
    FigOption(
      name: ["-w"],
      description: "Disable warnings",
    ),
    FigOption(
      name: ["-x"],
      description: "Cross over +d|+D File systems or symbolic links",
      args: FigArg(
        name: "cross-over option",
        suggestions: [
          FigSuggestion(
            name: "f",
            description: "File system mount point cross-over processing",
          ),
          FigSuggestion(
            name: "l",
            description: "Symbolic link cross-over processing",
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-X"],
      description: "File descriptor table only",
    ),
  ],
);
