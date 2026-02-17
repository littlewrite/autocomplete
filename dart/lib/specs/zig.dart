// AI-generated from TypeScript source: zig.ts

import 'package:autocomplete/src/spec.dart';
import 'clang.dart';

final FigOption colorOption = FigOption(
  name: '--color',
  description: 'Enable or disable colored message',
  args: [
    FigArg(
      suggestions: ['auto', 'on', 'off'],
    ),
  ],
);

final FigOption cacheDirOption = FigOption(
  name: '--cache-dir',
  description: 'Override path to local Zig cache directory',
  args: [
    FigArg(
      template: 'folders',
    ),
  ],
  priority: 20,
);

final FigOption globalCacheDirOption = FigOption(
  name: '--global-cache-dir',
  description: 'Override path to global Zig cache directory',
  args: [
    FigArg(
      template: 'folders',
    ),
  ],
  priority: 20,
);

final FigOption stage1Option = FigOption(
  name: '-fstage1',
  description: 'Force using bootstrap compiler as the codegen backend',
  exclusiveOn: ['-fno-stage1'],
  priority: 20,
);

final FigOption noStage1Option = FigOption(
  name: '-fno-stage1',
  description: 'Prevent using bootstrap compiler as the codegen backend',
  exclusiveOn: ['-fstage1'],
  priority: 20,
);

final FigOption zigLibDirOption = FigOption(
  name: '--zig-lib-dir',
  description: 'Override path to Zig lib directory',
  args: [
    FigArg(
      template: 'folders',
    ),
  ],
  priority: 20,
);

final FigOption referenceTraceOption = FigOption(
  name: '-freference-trace',
  description:
      'How many lines of reference trace should be shown per compile error',
  insertValue: '-freference-trace={cursor}',
  exclusiveOn: ['-fno-reference-trace'],
  priority: 20,
);

final FigOption noReferenceTraceOption = FigOption(
  name: '-fno-reference-trace',
  description: 'Disable reference trace',
  exclusiveOn: ['-freference-trace'],
  priority: 20,
);

final FigOption helpOption = FigOption(
  name: ['-h', '--help'],
  description: 'Print help and exit',
);

final FigOption versionOption = FigOption(
  name: ['-v', '--version'],
  description: 'Display the version of this program',
);

final List<Option> buildOptions = [
  helpOption,
  Option(name: '--watch', description: 'Enable compiler REPL'),
  colorOption,
  Option(
      name: '-femit-bin',
      description: '(default) Output machine code',
      insertValue: '-femit-bin={cursor}',
      exclusiveOn: ['-fno-emit-bin']),
  Option(
      name: '-fno-emit-bin',
      description: 'Do not output machine code',
      exclusiveOn: ['-femit-bin']),
  Option(
      name: '-femit-asm',
      description: 'Output .s (assembly code)',
      insertValue: '-femit-asm={cursor}',
      exclusiveOn: ['-fno-emit-asm']),
  Option(
      name: '-fno-emit-asm',
      description: '(default) Do not output .s (assembly code)',
      exclusiveOn: ['-femit-asm']),
  Option(
      name: '-femit-llvm-ir',
      description: 'Produce a .ll file with LLVM IR (requires LLVM extensions)',
      insertValue: '-femit-llvm-ir={cursor}',
      exclusiveOn: ['-fno-emit-llvm-ir']),
  Option(
      name: '-fno-emit-llvm-ir',
      description: '(default) Do not produce a .ll file with LLVM IR',
      exclusiveOn: ['-femit-llvm-ir']),
  Option(
      name: '-femit-llvm-bc',
      description:
          'Produce a LLVM module as a .bc file (requires LLVM extensions)',
      insertValue: '-femit-llvm-bc={cursor}',
      exclusiveOn: ['-fno-emit-llvm-bc']),
  Option(
      name: '-fno-emit-llvm-bc',
      description: '(default) Do not produce a LLVM module as a .bc file',
      exclusiveOn: ['-femit-llvm-bc']),
  Option(
      name: '-femit-h',
      description: 'Generate a C header file (.h)',
      insertValue: '-femit-h={cursor}',
      exclusiveOn: ['-fno-emit-h']),
  Option(
      name: '-fno-emit-h',
      description: '(default) Do not generate a C header file (.h)',
      exclusiveOn: ['-femit-h']),
  Option(
      name: '-femit-docs',
      description: 'Create a docs/ dir with html documentation',
      insertValue: '-femit-docs={cursor}',
      exclusiveOn: ['-fno-emit-docs']),
  Option(
      name: '-fno-emit-docs',
      description: '(default) Do not produce docs/ dir with html documentation',
      exclusiveOn: ['-femit-docs']),
  Option(
      name: '-femit-analysis',
      description: 'Write analysis JSON file with type information',
      insertValue: '-femit-analysis={cursor}',
      exclusiveOn: ['-fno-emit-analysis']),
  Option(
      name: '-fno-emit-analysis',
      description:
          '(default) Do not write analysis JSON file with type information',
      exclusiveOn: ['-femit-analysis']),
  Option(
      name: '-femit-implib',
      description:
          '(default) Produce an import .lib when building a Windows DLL',
      insertValue: '-femit-implib={cursor}',
      exclusiveOn: ['-fno-emit-implib']),
  Option(
      name: '-fno-emit-implib',
      description: 'Do not produce an import .lib when building a Windows DLL',
      exclusiveOn: ['-femit-implib']),
  Option(
      name: '--show-builtin',
      description: 'Output the source of @import("builtin") then exit'),
  cacheDirOption,
  globalCacheDirOption,
  zigLibDirOption,
  Option(
      name: '--enable-cache',
      description: 'Output to cache directory; print path to stdout'),
  Option(
    name: "-target",
    description: "<arch><sub>-<os>-<abi> see the targets command",
    insertValue: "-target {cursor}",
  ),
  Option(
      name: '-mcpu',
      description: 'Specify target CPU and feature set',
      insertValue: '-mcpu {cursor}'),
  Option(
      name: '-mcmodel',
      description: 'Limit range of code and data virtual addresses',
      insertValue: '-mcmodel={cursor}',
      args: [
        Arg(suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'tiny'),
          FigSuggestion(name: 'small'),
          FigSuggestion(name: 'kernel'),
          FigSuggestion(name: 'medium'),
          FigSuggestion(name: 'large')
        ])
      ]),
  Option(
      name: '-mred-zone',
      description: 'Force-enable the "red-zone"',
      exclusiveOn: ['-mno-red-zone']),
  Option(
      name: '-mnored-zone',
      description: 'Force-disable the "red-zone"',
      exclusiveOn: ['-mred-zone']),
  Option(
      name: '-fomit-frame-pointer',
      description: 'Omit the stack frame pointer',
      exclusiveOn: ['-fno-omit-frame-pointer']),
  Option(
      name: '-fno-omit-frame-pointer',
      description: 'Store the stack frame pointer',
      exclusiveOn: ['-fomit-frame-pointer']),
  Option(
      name: '-mexec-model',
      insertValue: '-mexec-model={cursor}',
      description: '(WASI) Execution model'),
  Option(
      name: '--name',
      description: 'Override root name (not a file path)',
      insertValue: '--name {cursor}'),
  Option(name: '-O', description: 'Choose what to optimize for', args: [
    Arg(name: 'mode', suggestions: [
      FigSuggestion(
          name: 'Debug', description: '(default) Optimizations off, safety on'),
      FigSuggestion(
          name: 'ReleaseFast', description: 'Optimizations on, safety off'),
      FigSuggestion(
          name: 'ReleaseSafe', description: 'Optimizations on, safety on'),
      FigSuggestion(
          name: 'ReleaseSmall',
          description: 'Optimize for small binary, safety off')
    ])
  ]),
  Option(
      name: '--pkg-begin',
      description: 'Make pkg available to import and push current pkg',
      args: [Arg(name: 'name'), Arg(name: 'path')]),
  Option(name: '--pkg-end', description: 'Pop current pkg'),
  Option(
      name: '--main-pkg-path',
      description: 'Set the directory of the root package',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '-fPIC',
      description: 'Force-enable Position Independent Code',
      exclusiveOn: ['-fno-PIC']),
  Option(
      name: '-fno-PIC',
      description: 'Force-disable Position Independent Code',
      exclusiveOn: ['-fPIC']),
  Option(
      name: '-fPIE',
      description: 'Force-enable Position Independent Executable',
      exclusiveOn: ['-fno-PIE']),
  Option(
      name: '-fno-PIE',
      description: 'Force-disable Position Independent Executable',
      exclusiveOn: ['-fPIE']),
  Option(
      name: '-flto',
      description:
          'Force-enable Link Time Optimization (requires LLVM extensions)',
      exclusiveOn: ['-fno-lto']),
  Option(
      name: '-fno-lto',
      description: 'Force-disable Link Time Optimization',
      exclusiveOn: ['-flto']),
  Option(
      name: '-fstack-check',
      description: 'Enable stack probing in unsafe builds',
      exclusiveOn: ['-fno-stack-check']),
  Option(
      name: '-fno-stack-check',
      description: 'Disable stack probing in unsafe builds',
      exclusiveOn: ['-fstack-check']),
  Option(
      name: '-fstack-protector',
      description: 'Enable stack protection in unsafe builds',
      exclusiveOn: ['-fno-stack-protector']),
  Option(
      name: '--fno-stack-protector',
      description: 'Disable stack protection in unsafe builds',
      exclusiveOn: ['-fstack-protector']),
  Option(
      name: '-fsanitize-c',
      description: 'Enable C undefined behavior detection in unsafe builds',
      exclusiveOn: ['-fno-sanitize-c']),
  Option(
      name: '-fno-sanitize-c',
      description: 'Disable C undefined behavior detection in safe builds',
      exclusiveOn: ['-fsanitize-c']),
  Option(
      name: '-fvalgrind',
      description: 'Include valgrind client requests in release builds',
      exclusiveOn: ['-fno-valgrind']),
  Option(
      name: '-fno-valgrind',
      description: 'Omit valgrind client requests in debug builds',
      exclusiveOn: ['-fvalgrind']),
  Option(
      name: '-fsanitize-thread',
      description: 'Enable Thread Sanitizer',
      exclusiveOn: ['-fno-sanitize-thread']),
  Option(
      name: '-fno-sanitize-thread',
      description: 'Disable Thread Sanitizer',
      exclusiveOn: ['-fsanitize-thread']),
  Option(
      name: '-fdll-export-fns',
      description: 'Mark exported functions as DLL exports (Windows)',
      exclusiveOn: ['-fno-dll-export-fns']),
  Option(
      name: '-fno-dll-export-fns',
      description: 'Force-disable marking exported functions as DLL exports',
      exclusiveOn: ['-fdll-export-fns']),
  Option(
      name: '-funwind-tables',
      description: 'Always produce unwind table entries for all functions',
      exclusiveOn: ['-fno-unwind-tables']),
  Option(
      name: '-fno-unwind-tables',
      description: 'Never produce unwind table entries',
      exclusiveOn: ['-funwind-tables']),
  Option(
      name: '-fLLVM',
      description: 'Force using LLVM as the codegen backend',
      exclusiveOn: ['-fno-LLVM']),
  Option(
      name: '-fno-LLVM',
      description: 'Prevent using LLVM as the codegen backend',
      exclusiveOn: ['-fLLVM']),
  Option(
      name: '-fClang',
      description: 'Force using Clang as the C/C++ compilation backend',
      exclusiveOn: ['-fno-Clang']),
  Option(
      name: '-fno-Clang',
      description: 'Prevent using Clang as the C/C++ compilation backend',
      exclusiveOn: ['-fClang']),
  stage1Option,
  noStage1Option,
  referenceTraceOption,
  noReferenceTraceOption,
  Option(
      name: '-fsingle-threaded',
      description: 'Code assumes there is only one thread',
      exclusiveOn: ['-fno-single-threaded']),
  Option(
      name: '-fno-single-threaded',
      description: 'Code may not assume there is only one thread',
      exclusiveOn: ['-fsingle-threaded']),
  Option(
      name: '-fbuiltin',
      description: 'Enable implicit builtin knowledge of functions',
      exclusiveOn: ['-fno-builtin']),
  Option(
      name: '-fno-builtin',
      description: 'Disable implicit builtin knowledge of functions',
      exclusiveOn: ['-fbuiltin']),
  Option(
      name: '-ffunction-sections',
      description: 'Places each function in a separate section',
      exclusiveOn: ['-fno-function-sections']),
  Option(
      name: '-fno-function-sections',
      description: 'All functions go into same section',
      exclusiveOn: ['ffunction-sections']),
  Option(
      name: '-fstrip',
      description: 'Omit debug symbols',
      exclusiveOn: ['-fno-strip']),
  Option(
      name: '-fno-strip',
      description: 'Keep debug symbols',
      exclusiveOn: ['-fno-strip']),
  Option(
      name: '-ofmt',
      insertValue: '-ofmt={cursor}',
      description: 'Override target object format',
      args: [
        Arg(name: 'mode', suggestions: [
          FigSuggestion(
              name: 'elf', description: 'Executable and Linking Format'),
          FigSuggestion(name: 'c', description: 'C source code'),
          FigSuggestion(name: 'wasd', description: 'WebAssembly'),
          FigSuggestion(
              name: 'coff', description: 'Common Object File Format (Windows)'),
          FigSuggestion(name: 'macho', description: 'MacOS relocatables'),
          FigSuggestion(
              name: 'spirv',
              description:
                  'Standard, Portable Intermediate Representation V (SPIR-V)'),
          FigSuggestion(
              name: 'plan9', description: 'Plan 9 from Bell Labs object format')
        ])
      ]),
  Option(
      name: '-idirafter',
      description: 'Add directory to AFTER include search path',
      args: [Arg(name: 'dir', template: 'folders')]),
  Option(
      name: '-isystem',
      description: 'Add directory to SYSTEM include search path',
      args: [Arg(name: 'dir', template: 'folders')]),
  Option(
      name: '-I',
      description: 'Add directory to include search path',
      insertValue: '-I{cursor}'),
  Option(
      name: '-D',
      description: 'Define C [macro] to [value] (1 if [value] omitted)',
      insertValue: '-D{cursor}'),
  Option(
      name: '--libc',
      description: 'Provide a file which specifies libc paths',
      args: [Arg(name: 'file', template: 'filepaths')]),
  Option(
      name: '-cflags',
      description: 'Set extra flags for the next positional C source files',
      insertValue: '-cflags {cursor} --'),
  Option(
    name: ["-l", "--library"],
    description: "Link against system library (only if actually used)",
    args: Arg(
      name: "lib",
    ),
  ),
  Option(
      name: ['-needed-l', '--needed-library'],
      description: 'Link against system library (even if unused)',
      args: [Arg(name: 'lib')]),
  Option(
      name: ['-L', '--library-directory'],
      description: 'Add a directory to the library search path',
      args: [Arg(name: 'd')]),
  Option(
      name: ['-T', '--script'],
      description: 'Use a custom linker script',
      args: [Arg(name: 'script')]),
  Option(
      name: '--version-script',
      description: 'Provide a version .map file',
      insertValue: '--version-script {cursor}',
      args: [Arg(name: 'path')]),
  Option(
      name: '--dynamic-linker',
      description: 'Set the dynamic interpreter path (usually ld.so)',
      insertValue: '--dynamic-linker {cursor}',
      args: [Arg(name: 'path')]),
  Option(
      name: '--sysroot',
      description: 'Set the system root directory (usually /)',
      insertValue: '--sysroot {cursor}',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '--version',
      description: 'Dynamic library semver',
      insertValue: '--version {ver}',
      args: [Arg(name: 'ver')]),
  Option(
      name: '--entry',
      description: 'Set the entrypoint symbol name',
      insertValue: '--entry {cursor}',
      args: [Arg(name: 'name')]),
  Option(
      name: '-fsoname',
      description: 'Override the default SONAME value',
      insertValue: '-fsoname={cursor}',
      exclusiveOn: ['-fno-soname']),
  Option(
      name: '-fno-soname',
      description: 'Disable emitting a SONAME',
      exclusiveOn: ['fsoname']),
  Option(
      name: '-fLLD',
      description: 'Force using LLD as the linker',
      exclusiveOn: ['-fno-LLD']),
  Option(
      name: '-fno-LLD',
      description: 'Prevent using LLD as the linker',
      exclusiveOn: ['-fLLD']),
  Option(
      name: '-fcompiler-rt',
      description: 'Always include compiler-rt symbols in output',
      exclusiveOn: ['-fno-compiler-rt']),
  Option(
      name: '-fno-compiler-rt',
      description: 'Prevent including compiler-rt symbols in output',
      exclusiveOn: ['-fcompiler-rt']),
  Option(
      name: '-rdynamic',
      description: 'Add all symbols to the dynamic symbol table'),
  Option(
      name: '-rpath',
      description: 'Add directory to the runtime library search path',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '-feach-lib-rpath',
      description: 'Ensure adding rpath for each used dynamic library',
      exclusiveOn: ['-fno-each-lib-rpath']),
  Option(
      name: '-fno-each-lib-rpath',
      description: 'Prevent adding rpath for each used dynamic library',
      exclusiveOn: ['-feach-lib-rpath']),
  Option(
      name: '-fallow-shlib-undefined',
      description: 'Allows undefined symbols in shared libraries',
      exclusiveOn: ['-fno-allow-shlib-undefined']),
  Option(
      name: '-fno-allow-shlib-undefined',
      description: 'Disallows undefined symbols in shared libraries',
      exclusiveOn: ['-fallow-shlib-undefined']),
  Option(
      name: '-fbuild-id',
      description: 'Helps coordinate stripped binaries with debug symbols',
      exclusiveOn: ['-fno-build-id']),
  Option(
      name: '-fno-build-id',
      description: '(default) Saves a bit of time linking',
      exclusiveOn: ['-fbuild-id']),
  Option(
      name: '--eh-frame-hdr',
      description:
          'Enable C++ exception handling by passing --eh-frame-hdr to linker'),
  Option(
      name: '--emit-relocs',
      description: 'Enable output of relocation sections for post build tools'),
  Option(
      name: '-z',
      description: 'Set linker extension flags',
      insertValue: '-z {cursor}',
      args: [
        Arg(name: 'arg', suggestions: [
          FigSuggestion(
              name: 'nodelete',
              description:
                  'Indicate that the object cannot be deleted from a process'),
          FigSuggestion(
              name: 'notext',
              description:
                  'Permit read-only relocations in read-only segments'),
          FigSuggestion(
              name: 'defs',
              description:
                  'Force a fatal error if any undefined symbols remain'),
          FigSuggestion(
              name: 'origin',
              description:
                  'Indicate that the object must have its origin processed'),
          FigSuggestion(
              name: 'nocopyreloc',
              description: 'Disable the creation of copy relocations'),
          FigSuggestion(
              name: 'now',
              description:
                  '(default) Force all relocations to be processed on load'),
          FigSuggestion(
              name: 'lazy',
              description:
                  'Don\'t force all relocations to be processed on load'),
          FigSuggestion(
              name: 'relro',
              description:
                  '(default) Force all relocations to be read-only after processing'),
          FigSuggestion(
              name: 'norelro',
              description:
                  'Don\'t force all relocations to be read-only after processing')
        ])
      ]),
  Option(
      name: '-dynamic', description: 'Force output to be dynamically linked'),
  Option(name: '-static', description: 'Force output to be statically linked'),
  Option(name: '-Bsymbolic', description: 'Bind global references locally'),
  Option(
      name: '--compress-debug-sections',
      description: 'Debug section compression settings',
      insertValue: '--compress-debug-sections={cursor}',
      args: [
        Arg(name: 'e', suggestions: [
          FigSuggestion(name: 'none', description: 'No compression'),
          FigSuggestion(
              name: 'zlib', description: 'Compression with deflate/inflate')
        ])
      ]),
  Option(
      name: '--gc-sections',
      description:
          'Force removal of functions and data that are unreachable by the entry point or exported symbols',
      exclusiveOn: ['--no-gc-sections']),
  Option(
      name: '--no-gc-sections',
      description: 'Don\'t force removal of unreachable functions and data',
      exclusiveOn: ['--gc-sections']),
  Option(
      name: '--subsystem',
      description: '(Windows) /SUBSYSTEM:<subsystem> to the linker',
      args: [Arg(name: 'subsystem')]),
  Option(
      name: '--stack',
      description: 'Override default stack size',
      args: [Arg(name: 'size')]),
  Option(
      name: '--image-base',
      description: 'Set base address for executable image',
      args: [Arg(name: 'addr', description: 'Address')]),
  Option(
      name: ['-weak-l', '-weak_library'],
      description:
          '(Darwin) link against system library and mark it and all referenced symbols as weak',
      args: [Arg(name: 'lib')]),
  Option(
      name: '-framework',
      description: '(Darwin) link against framework',
      args: [Arg(name: 'name', description: 'Framework name')]),
  Option(
      name: '-needed_framework',
      description: '(Darwin) link against framework (even if unused)',
      args: [Arg(name: 'name', description: 'Framework name')]),
  Option(
      name: '-needed_library',
      description: '(Darwin) link against framework (even if unused)',
      args: [Arg(name: 'lib', description: 'Library name')]),
  Option(
      name: '-weak_framework',
      description:
          '(Darwin) link against framework and mark it and all referenced symbols as weak',
      args: [Arg(name: 'name', description: 'Framework name')]),
  Option(
      name: '-F',
      description: '(Darwin) add search path for frameworks',
      insertValue: '-F{cursor}',
      args: [Arg(name: 'dir', template: 'folders')]),
  Option(
      name: '-install_name',
      description: '(Darwin) add dylib\'s install name',
      insertValue: '-install_name={cursor}'),
  Option(
      name: '--entitlements',
      description:
          '(Darwin) add path to entitlements file for embedding in code signature',
      args: [
        Arg(name: 'path', template: ['folders', 'filepaths'])
      ]),
  Option(
      name: '-pagezero_size',
      description:
          '(Darwin) size of the __PAGEZERO segment in hexadecimal notation',
      insertValue: '-pagezero_size {cursor}',
      args: [Arg(name: 'value')]),
  Option(
      name: '-search_paths_first',
      description:
          '(Darwin) search each dir in library search paths for `libx.dylib` then `libx.a`'),
  Option(
      name: '-search_dylibs_first',
      description:
          '(Darwin) search `libx.dylib` in each dir in library search paths, then `libx.a`'),
  Option(
      name: '-headerpad',
      description:
          '(Darwin) set minimum space for future expansion of the load commands in hexadecimal notation',
      args: [Arg(name: 'value')]),
  Option(
      name: '-headerpad_max_install_names',
      description: '(Darwin) set enough space as if all paths were MAXPATHLEN'),
  Option(
      name: '-dead_strip',
      description:
          '(Darwin) remove functions and data that are unreachable by the entry point or exported symbols'),
  Option(
      name: '-dead_strip_dylibs',
      description:
          '(Darwin) remove dylibs that are unreachable by the entry point or exported symbols'),
  Option(
      name: '--import-memory',
      description: '(WebAssembly) import memory from the environment'),
  Option(
      name: '--import-table',
      description:
          '(WebAssembly) import function table from the host environment'),
  Option(
      name: '--export-table',
      description:
          '(WebAssembly) export function table to the host environment'),
  Option(
      name: '--initial-memory',
      description: '(WebAssembly) initial size of the linear memory',
      insertValue: '--initial-memory={cursor}'),
  Option(
      name: '--max-memory',
      description: '(WebAssembly) maximum size of the linear memory',
      insertValue: '--max-memory={cursor}'),
  Option(
      name: '--shared-memory',
      description: '(WebAssembly) use shared linear memory'),
  Option(
      name: '--global-base',
      description: '(WebAssembly) where to start to place global data',
      insertValue: '--global-base={cursor}'),
  Option(
      name: '--export',
      description: '(WebAssembly) Force a symbol to be exported',
      insertValue: '--export={cursor}'),
  Option(
    name: "--test-filter",
    description: "Skip tests that do not match filter",
    args: Arg(
      name: "filter",
    ),
  ),
  Option(
      name: '--test-name-prefix',
      description: 'Add prefix to all tests',
      args: [Arg(name: 'text')]),
  Option(
      name: '--test-cmd',
      description: 'Specify test execution command one arg at a time',
      args: [Arg(name: 'arg')]),
  Option(
      name: '--test-cmd-bin',
      description: 'Appends test binary path to test cmd args'),
  Option(
      name: '--test-evented-io',
      description: 'Runs the test in evented I/O mode'),
  Option(
      name: '--test-no-exec',
      description: 'Compiles test binary without running it'),
  Option(
    name: "-ftime-report",
    description: "Print timing diagnostics",
  ),
  Option(name: '-fstack-report', description: 'Print stack size diagnostics'),
  Option(name: '--verbose-link', description: 'Display linker invocations'),
  Option(name: '--verbose-cc', description: 'Display linker invocations'),
  Option(
      name: '--verbose-air',
      description: 'Enable compiler debug output for Zig AIR'),
  Option(
      name: '--verbose-llvm-ir',
      description: 'Enable compiler debug output for LLVM IR'),
  Option(
      name: '--verbose-cimport',
      description: 'Enable compiler debug output for C imports'),
  Option(
      name: '--verbose-llvm-cpu-features',
      description: 'Enable compiler debug output for LLVM CPU features'),
  Option(
      name: '--debug-log',
      description: 'Enable printing debug/info log messages for scope',
      args: [Arg(name: 'scope')]),
  Option(
      name: '--debug-compile-errors',
      description: 'Crash with helpful diagnostics at the first compile error'),
  Option(
      name: '--debug-link-snapshot',
      description: 'Enable dumping of the linker\'s state in JSON format')
];

final List<FigOption> llvmOptions = [
  ...(clangSpec as FigSubcommand).options ?? [],
  helpOption,
];

/// Completion spec for `zig` CLI
final FigSpec zigSpec = FigSpec(
    name: 'zig',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    description:
        'Zig is a general-purpose programming language and toolchain for " +\n    "maintaining robust, optimal, and reusable software',
    subcommands: [
      Subcommand(
          name: 'build',
          description: 'Build project from build.zig',
          subcommands: [
            Subcommand(
                name: 'install',
                description: 'Copy build artifacts to prefix path'),
            Subcommand(
                name: 'uninstall',
                description: 'Remove build artifacts from prefix path'),
            Subcommand(name: 'run', description: 'Run the app'),
            Subcommand(name: 'test', description: 'Run unit tests')
          ],
          options: [
            Option(
                name: ['-p', '--prefix'],
                description: 'Override default install prefix',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--prefix-lib-dir',
                description: 'Override default library directory path',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--prefix-exe-dir',
                description: 'Override default executable directory path',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--prefix-include-dir',
                description: 'Override default include directory path',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--sysroot',
                description: 'Set the system root directory (usually /)',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--search-prefix',
                description:
                    'Add a path to look for binaries, libraries, headers',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '--libc',
                description: 'Provide a file which specifies libc paths',
                args: [Arg(name: 'path', template: 'filepaths')]),
            Option(
                name: '-fdarling',
                description:
                    'Integration with system-installed Darling to execute macOS programs on Linux hosts',
                exclusiveOn: ['-fno-fdarling'],
                priority: 25),
            Option(
                name: '-fno-fdarling',
                description:
                    'No integration with system-installed Darling to execute macOS programs on Linux hosts',
                exclusiveOn: ['-fdarling'],
                priority: 25),
            Option(
                name: '-fqemu',
                description:
                    'Integration with system-installed QEMU to execute foreign-architecture programs on Linux host',
                exclusiveOn: ['-fno-qemu'],
                priority: 25),
            Option(
                name: '-fno-qemu',
                description:
                    'No integration with system-installed QEMU to execute foreign-architecture programs on Linux host',
                exclusiveOn: ['-fqemu'],
                priority: 25),
            Option(
                name: '--glibc-runtimes',
                description:
                    'Enhances QEMU integration by providing glibc built for multiple foreign architectures',
                args: [Arg(name: 'path', template: 'folders')]),
            Option(
                name: '-frosetta',
                description:
                    'Rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts',
                exclusiveOn: ['-fno-rosetta'],
                priority: 25),
            Option(
                name: '-fno-rosetta',
                description:
                    'Don\'t rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts',
                exclusiveOn: ['-frosetta'],
                priority: 25),
            Option(
                name: '-fwasmtime',
                description:
                    'Integration with system-installed wasmtime to execute WASI binaries',
                exclusiveOn: ['-fno-wasmtime'],
                priority: 25),
            Option(
                name: '-fno-wasmtime',
                description:
                    'No integration with system-installed wasmtime to execute WASI binaries',
                exclusiveOn: ['-fwasmtime'],
                priority: 25),
            Option(
                name: '-fwine',
                description:
                    'Integration with system-installed Wine to execute Windows programs on Linux hosts',
                exclusiveOn: ['-fno-wine'],
                priority: 25),
            Option(
                name: '-fno-wine',
                description:
                    'No integration with system-installed Wine to execute Windows programs on Linux hosts',
                exclusiveOn: ['-fwine'],
                priority: 25),
            helpOption,
            Option(
                name: '--verbose',
                description: 'Print commands before executing them'),
            colorOption,
            Option(
                name: '--prominent-compile-errors',
                description:
                    'Output compile errors formatted for a human to read'),
            Option(
                name: '-Dtarget',
                description: 'The CPU architecture, OS, and ABI to build for',
                insertValue: '-Dtarget={cursor}'),
            Option(
                name: '-Dcpu',
                description: 'Target CPU features to add or subtract',
                insertValue: '-Dcpu={cursor}'),
            Option(
                name: '-Drelease-safe',
                description: 'Optimizations on and safety on',
                insertValue: '-Drelease-safe={cursor}',
                args: [
                  Arg(suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ])
                ]),
            Option(
                name: '-Drelease-fast',
                description: 'Optimizations on and safety off',
                insertValue: '-Drelease-fast={cursor}',
                args: [
                  Arg(suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ])
                ]),
            Option(
                name: '-Drelease-small',
                description: 'Size optimizations on and safety off',
                insertValue: '-Drelease-small={cursor}',
                args: [
                  Arg(suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ])
                ]),
            stage1Option,
            noStage1Option,
            referenceTraceOption,
            noReferenceTraceOption,
            Option(
                name: '--build-file',
                description: 'Override path to build.zig',
                args: [Arg(template: 'filepaths')],
                priority: 20),
            cacheDirOption,
            globalCacheDirOption,
            zigLibDirOption,
            Option(
                name: '--verbose-link',
                description: 'Enable compiler debug output for linking',
                priority: 20),
            Option(
                name: '--verbose-air',
                description: 'Enable compiler debug output for Zig AIR',
                priority: 20),
            Option(
                name: '--verbose-llvm-ir',
                description: 'Enable compiler debug output for LLVM IR',
                priority: 20),
            Option(
                name: '--verbose-cimport',
                description: 'Enable compiler debug output for C imports',
                priority: 20),
            Option(
                name: '--verbose-cc',
                description: 'Enable compiler debug output for C compilation',
                priority: 20),
            Option(
                name: '--verbose-llvm-cpu-features',
                description:
                    'Enable compiler debug output for LLVM CPU features',
                priority: 20)
          ]),
      Subcommand(
          name: 'init-exe',
          description:
              'Initializes a `zig build` project in the current working directory',
          options: [helpOption]),
      Subcommand(
          name: 'init-lib',
          description:
              'Initializes a `zig build` project in the current working directory',
          options: [helpOption]),
      Subcommand(
          name: 'ast-check',
          description:
              'Given a .zig source file, reports any compile errors that " +\n        "can be ascertained on the basis of the source code alone, without target " +\n        "information or type checking. If [file] is omitted, stdin is used.',
          args: [
            Arg(name: 'file', template: 'filepaths', isOptional: true)
          ],
          options: [
            helpOption,
            colorOption,
            Option(
                name: '-t',
                description: '(debug option) Output ZIR in text form to stdout')
          ]),
      Subcommand(
          name: 'build-exe',
          description: 'Create executable from source or object files',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(
          name: 'build-lib',
          description: 'Create library from source or object files',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(
          name: 'build-obj',
          description: 'Create library from source or object files',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(
          name: 'fmt',
          description: 'Reformat Zig source into canonical form',
          args: [
            Arg(name: 'files', template: 'filepaths')
          ],
          options: [
            helpOption,
            colorOption,
            Option(
                name: '--stdin',
                description: 'Format code from stdin; output to stdout'),
            Option(
                name: '--check',
                description:
                    'Format code from stdin; output to stdout List non-conforming files and exit with an error'),
            Option(
                name: '--ast-check',
                description: 'Run zig ast-check on every file'),
            Option(
                name: '--exclude',
                description: 'Exclude file or directory from formatting',
                args: [
                  Arg(name: 'file', template: ['filepaths', 'folders'])
                ])
          ]),
      Subcommand(
          name: 'run',
          description: 'Create executable and run immediately',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(
          name: 'test',
          description: 'Create and run a test build',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(
          name: 'translate-c',
          description: 'Convert C code to Zig code',
          options: buildOptions,
          args: [Arg(name: 'files', template: 'filepaths', isVariadic: true)]),
      Subcommand(name: 'ar', description: 'LLVM Archiver', options: [
        Option(
            name: '--format',
            description: 'Archive format to create',
            insertValue: '--format={cursor}',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'default', description: 'Default'),
                FigSuggestion(name: 'gnu', description: 'GNU'),
                FigSuggestion(name: 'darwin', description: 'Darwin'),
                FigSuggestion(name: 'bsd', description: 'BSD'),
                FigSuggestion(
                    name: 'bigarchive', description: 'Big archive (AIX OS)')
              ])
            ])
      ]),
      Subcommand(
          name: 'cc',
          description: 'Use Zig as a drop-in C compiler',
          options: llvmOptions,
          args: [Arg(name: 'file', isVariadic: true, template: 'filepaths')]),
      Subcommand(
          name: 'c++',
          description: 'Use Zig as a drop-in C++ compiler',
          options: llvmOptions,
          args: [Arg(name: 'file', isVariadic: true, template: 'filepaths')]),
      Subcommand(name: 'dll-tool', description: 'LLVM dll tool', options: [
        helpOption,
        Option(
            name: '-D',
            description: 'Specify the input DLL Name',
            args: [Arg(name: 'value')]),
        Option(
            name: '-d',
            description: 'Input .def File',
            args: [Arg(name: 'value', template: 'filepaths')]),
        Option(
            name: '-f',
            description: 'Assembler Flags',
            args: [Arg(name: 'value')]),
        Option(name: '-k', description: 'Kill @n Symbol from export'),
        Option(
            name: '-l',
            description: 'Generate an import lib',
            args: [Arg(name: 'value')]),
        Option(name: '-m', description: 'Set target machine', args: [
          Arg(name: 'value', suggestions: [
            FigSuggestion(name: 'i386'),
            FigSuggestion(name: 'i386:x86-64'),
            FigSuggestion(name: 'arm'),
            FigSuggestion(name: 'arm64')
          ])
        ]),
        Option(name: '-S', description: 'Assembler', args: [Arg(name: 'value')])
      ]),
      Subcommand(name: 'lib', description: 'Use Zig as a drop-in lib.exe'),
      Subcommand(
          name: 'ranlib',
          description:
              'LLVM Ranlib : This program generates an index to speed access to archives',
          options: [
            helpOption,
            versionOption,
            Option(
                name: '-D',
                description: 'Use zero for timestamps and uids/gids (default)'),
            Option(
                name: '-U', description: 'Use actual timestamps and uids/gids')
          ]),
      Subcommand(
          name: 'env',
          description:
              'Print lib path, std path, cache directory, and version'),
      Subcommand(name: 'help', description: 'Print help and exit'),
      Subcommand(
          name: 'libc',
          description:
              'Detect the native libc installation and print the resulting paths to stdout',
          args: [
            Arg(name: 'paths_file', template: 'filepaths')
          ],
          options: [
            helpOption,
            Option(
                name: '-target',
                description: '<arch><sub>-<os>-<abi> see the targets command',
                args: [Arg(name: 'name')])
          ]),
      Subcommand(
          name: 'targets', description: 'List available compilation targets'),
      Subcommand(name: 'version', description: 'Print version number and exit'),
      Subcommand(name: 'zen', description: 'Print Zen of Zig and exit')
    ],
    options: [
      helpOption
    ],
    args: [
      Arg(name: 'files', template: 'filepaths', isOptional: true)
    ]);
