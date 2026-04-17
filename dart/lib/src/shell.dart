// Shell type (aligned with inshellisense utils/shell).

enum Shell {
  bash,
  zsh,
  fish,
  pwsh,
  powershell,
  cmd,
  xonsh,
  nushell,
}

String shellName(Shell shell) {
  switch (shell) {
    case Shell.bash:
      return 'bash';
    case Shell.zsh:
      return 'zsh';
    case Shell.fish:
      return 'fish';
    case Shell.pwsh:
      return 'pwsh';
    case Shell.powershell:
      return 'powershell';
    case Shell.cmd:
      return 'cmd';
    case Shell.xonsh:
      return 'xonsh';
    case Shell.nushell:
      return 'nushell';
  }
}

/// Escape prefix for whitespace in shell.
String getShellWhitespaceEscapePrefix(Shell shell) {
  switch (shell) {
    case Shell.bash:
    case Shell.zsh:
    case Shell.fish:
    case Shell.xonsh:
    case Shell.nushell:
      return r'\';
    case Shell.pwsh:
    case Shell.powershell:
      return '`';
    case Shell.cmd:
      return '^';
  }
}

String getShellWhitespaceEscapeChar(Shell shell) =>
    getShellWhitespaceEscapePrefix(shell);

String escapeWhitespace(String value, Shell shell) {
  final prefix = getShellWhitespaceEscapePrefix(shell);
  return value.replaceAll(' ', '$prefix ');
}

String unescapeWhitespace(String value, Shell shell) {
  final prefix = getShellWhitespaceEscapePrefix(shell);
  return value.replaceAll('$prefix ', ' ');
}

bool isWindowsShell(Shell shell) {
  switch (shell) {
    case Shell.pwsh:
    case Shell.powershell:
    case Shell.cmd:
      return true;
    case Shell.bash:
    case Shell.zsh:
    case Shell.fish:
    case Shell.xonsh:
    case Shell.nushell:
      return false;
  }
}

List<String> shellPathSeparators(Shell shell) =>
    isWindowsShell(shell) ? const [r'\', '/'] : const ['/'];

String primaryPathSeparator(Shell shell) => isWindowsShell(shell) ? r'\' : '/';

bool isAbsolutePathForShell(String path, Shell shell) {
  if (path.isEmpty) return false;
  if (path.startsWith('/') || path.startsWith(r'\')) return true;
  if (!isWindowsShell(shell)) return false;
  if (path.length < 3) return false;
  final driveLetter = path.codeUnitAt(0);
  final isAsciiLetter = (driveLetter >= 65 && driveLetter <= 90) ||
      (driveLetter >= 97 && driveLetter <= 122);
  return isAsciiLetter && path[1] == ':' && (path[2] == r'\' || path[2] == '/');
}

bool endsWithPathSeparator(String path, Shell shell) {
  for (final separator in shellPathSeparators(shell)) {
    if (path.endsWith(separator)) return true;
  }
  return false;
}

int lastPathSeparatorIndex(String path, Shell shell) {
  var best = -1;
  for (final separator in shellPathSeparators(shell)) {
    final index = path.lastIndexOf(separator);
    if (index > best) best = index;
  }
  return best;
}
