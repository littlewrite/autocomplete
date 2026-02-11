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

/// Escape char for whitespace in shell (e.g. backslash in bash).
String getShellWhitespaceEscapeChar(Shell shell) {
  switch (shell) {
    case Shell.bash:
    case Shell.zsh:
      return r'\';
    case Shell.fish:
    case Shell.pwsh:
    case Shell.powershell:
      return '`';
    case Shell.cmd:
    case Shell.xonsh:
    case Shell.nushell:
      return r'\';
  }
}
