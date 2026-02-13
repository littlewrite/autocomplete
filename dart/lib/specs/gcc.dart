// AI-generated from TypeScript source: gcc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';
import 'clang.dart';

/// Completion spec for `gcc` CLI
final FigSpec gccSpec = FigSpec(
    name: 'gcc',
    description: 'The default compiler for most linux distributions',
    options: [
      Option(
          name: '--analyzer-output',
          description: 'Static analyzer report output format',
          args: [
            Arg(name: 'value', description: 'Value', suggestions: [
              FigSuggestion(name: 'html'),
              FigSuggestion(name: 'plist'),
              FigSuggestion(name: 'plist-multi-file'),
              FigSuggestion(name: 'plist-html'),
              FigSuggestion(name: 'sarif'),
              FigSuggestion(name: 'text')
            ])
          ]),
      Option(name: '--analyze', description: 'Run the static analyzer'),
      Option(
          name: '-arcmt-migrate-emit-errors',
          description: 'Emit ARC errors even if the migrator can fix them'),
      Option(
          name: '-arcmt-migrate-report-output',
          description: 'Output path for the plist report',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-B',
          description:
              'Add <dir> to search path for binaries and object files used implicitly',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-CC',
          description:
              'Include comments from within macros in preprocessed output'),
      Option(
          name: '-cl-denorms-are-zero',
          description: 'OpenCL only. Allow denormals to be flushed to zero'),
      Option(
          name: '-cl-fast-relaxed-math',
          description:
              'OpenCL only. Sets -cl-finite-math-only and -cl-unsafe-math-optimizations, and defines __FAST_RELAXED_MATH__'),
      Option(
          name: '-cl-finite-math-only',
          description:
              'OpenCL only. Allow floating-point optimizations that assume arguments and results are not NaNs or +-Inf'),
      Option(
          name: '-cl-fp32-correctly-rounded-divide-sqrt',
          description:
              'OpenCL only. Specify that single precision floating-point divide and sqrt used in the program source are correctly rounded'),
      Option(
          name: '-cl-kernel-arg-info',
          description: 'OpenCL only. Generate kernel argument metadata'),
      Option(
          name: '-cl-mad-enable',
          description:
              'OpenCL only. Allow use of less precise MAD computations in the generated binary'),
      Option(
          name: '-cl-no-signed-zeros',
          description:
              'OpenCL only. Allow use of less precise no signed zeros computations in the generated binary'),
      Option(
          name: '-cl-opt-disable',
          description:
              'OpenCL only. This option disables all optimizations. By default optimizations are enabled'),
      Option(
          name: '-cl-single-precision-constant',
          description:
              'OpenCL only. Treat double precision floating-point constant as single precision constant'),
      Option(
          name: '-cl-std',
          description: 'OpenCL language standard to compile for',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-cl-strict-aliasing',
          description:
              'OpenCL only. This option is added for compatibility with OpenCL 1.0'),
      Option(
          name: '-cl-uniform-work-group-size',
          description:
              'OpenCL only. Defines that the global work-size be a multiple of the work-group size specified to clEnqueueNDRangeKernel'),
      Option(
          name: '-cl-unsafe-math-optimizations',
          description:
              'OpenCL only. Allow unsafe floating-point optimizations'),
      Option(
          name: '--config',
          description: 'Specifies configuration file',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--cuda-compile-host-device',
          description: 'Compile CUDA code for both host and device (default)'),
      Option(
          name: '--cuda-device-only',
          description: 'Compile CUDA code for device only'),
      Option(
          name: '--cuda-host-only',
          description: 'Compile CUDA code for host only'),
      Option(
          name: '--cuda-include-ptx',
          description:
              'Include PTX for the following GPU architecture (e.g. sm_35) or \'all\'. May be specified more than once',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--cuda-noopt-device-debug',
          description:
              'Enable device-side debug info generation. Disables ptxas optimizations'),
      Option(
          name: '--cuda-path-ignore-env',
          description:
              'Ignore environment variables to detect CUDA installation'),
      Option(name: '--cuda-path', description: 'CUDA installation path', args: [
        Arg(name: 'value', description: 'Value', template: 'folders')
      ]),
      Option(
          name: '-cxx-isystem',
          description: 'Add directory to the C++ SYSTEM include search path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-C', description: 'Include comments in preprocessed output'),
      Option(
          name: '-c',
          description: 'Only run preprocess, compile, and assemble steps'),
      Option(
          name: '-dD',
          description:
              'Print macro definitions in -E mode in addition to normal output'),
      Option(
          name: '-dependency-dot',
          description: 'Filename to write DOT-formatted header dependencies to',
          args: [
            Arg(name: 'value', description: 'Value', template: 'filepaths')
          ]),
      Option(
          name: '-dependency-file',
          description: 'Filename (or -) to write dependency output to',
          args: [
            Arg(
                name: 'value',
                description: 'Value',
                suggestions: [FigSuggestion(name: '-')],
                template: 'filepaths')
          ]),
      Option(
          name: '-dI',
          description:
              'Print include directives in -E mode in addition to normal output'),
      Option(
          name: '-dM',
          description:
              'Print macro definitions in -E mode instead of normal output'),
      Option(
          name: '-D',
          description: 'Define <macro> to <value> (or 1 if <value> omitted)',
          args: [Arg(name: 'macro>=<value', description: 'Macro>=<valu')]),
      Option(
          name: '-emit-ast',
          description: 'Emit Clang AST files for source inputs'),
      Option(
          name: '-emit-interface-stubs',
          description: 'Generate Interface Stub Files'),
      Option(
          name: '-emit-llvm',
          description:
              'Use the LLVM representation for assembler and object files'),
      Option(
          name: '-emit-merged-ifs',
          description:
              'Generate Interface Stub Files, emit merged text not binary'),
      Option(
          name: '--emit-static-lib',
          description: 'Enable linker job to emit a static library'),
      Option(
          name:
              '-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang',
          description:
              'Trivial automatic variable initialization to zero is only here for benchmarks, it\'ll eventually be removed, and I\'m OK with that because I\'m only using it to benchmark'),
      Option(name: '-E', description: 'Only run the preprocessor'),
      Option(
          name: '-fAAPCSBitfieldLoad',
          description:
              'Follows the AAPCS standard that all volatile bit-field write generates at least one load. (ARM only)'),
      Option(
          name: '-faddrsig', description: 'Emit an address-significance table'),
      Option(
          name: '-faligned-allocation',
          description: 'Enable C++17 aligned allocation functions'),
      Option(
          name: '-fallow-editor-placeholders',
          description: 'Treat editor placeholders as valid source code'),
      Option(
          name: '-fansi-escape-codes',
          description: 'Use ANSI escape codes for diagnostics'),
      Option(
          name: '-fapinotes-cache-path',
          description:
              'Does nothing; API notes are no longer cached separately from modules',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-fapinotes-modules',
          description: 'Enable module-based external API notes support'),
      Option(
          name: '-fapinotes-swift-version',
          description:
              'Specify the Swift version to use when filtering API notes',
          args: [Arg(name: 'version', description: 'Version')]),
      Option(
          name: '-fapinotes', description: 'Enable external API notes support'),
      Option(
          name: '-fapple-kext',
          description: 'Use Apple\'s kernel extensions ABI'),
      Option(
          name: '-fapple-link-rtlib',
          description: 'Force linking the clang builtins runtime library'),
      Option(
          name: '-fapple-pragma-pack',
          description: 'Enable Apple gcc-compatible #pragma pack handling'),
      Option(name: '-fapplication-extension', description: 'Restrict'),
      Option(name: '-fasm-blocks', description: ''),
      Option(name: '-fautolink', description: ''),
      Option(
          name: '-fbasic-block-sections',
          description:
              'Place each function\'s basic blocks in unique sections (ELF Only) : all | labels | none | list=<file>',
          args: [
            Arg(name: 'value', description: 'Value', suggestions: [
              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'labels'),
              FigSuggestion(name: 'none')
            ])
          ]),
      Option(
          name: '-fblocks',
          description: 'Enable the \'blocks\' language feature'),
      Option(
          name: '-fborland-extensions',
          description:
              'Accept non-standard constructs supported by the Borland compiler'),
      Option(
          name: '-fbranch-target-identification',
          description:
              'Emit branch target identification instructions for indirect branch destinations'),
      Option(
          name: '-fbuild-session-file',
          description:
              'Use the last modification time of <file> as the build session timestamp',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-fbuild-session-timestamp',
          description: 'Time when the current build session started',
          args: [
            Arg(
                name: 'time since Epoch in seconds',
                description: 'Time since Epoch in seconds')
          ]),
      Option(
          name: '-fbuiltin-module-map',
          description: 'Load the clang builtins module map file'),
      Option(name: '-fc++-static-destructors', description: ''),
      Option(
          name: '-fcall-saved-x10',
          description: 'Make the x10 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x11',
          description: 'Make the x11 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x12',
          description: 'Make the x12 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x13',
          description: 'Make the x13 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x14',
          description: 'Make the x14 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x15',
          description: 'Make the x15 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x18',
          description: 'Make the x18 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x8',
          description: 'Make the x8 register call-saved (AArch64 only)'),
      Option(
          name: '-fcall-saved-x9',
          description: 'Make the x9 register call-saved (AArch64 only)'),
      Option(name: '-fcaret-diagnostics', description: ''),
      Option(
          name: '-fcf-protection',
          description: 'Enable cf-protection in \'full\' mode',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-fchar8_t', description: 'Enable C++ builtin type char8_t'),
      Option(
          name: '-fclang-abi-compat',
          description: 'Attempt to match the ABI of Clang <version>',
          args: [Arg(name: 'version', description: 'Version')]),
      Option(
          name: '-fcolor-diagnostics',
          description: 'Enable colors in diagnostics'),
      Option(
          name: '-fcomment-block-commands',
          description:
              'Treat each comma separated argument in <arg> as a documentation comment block command',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-fcommon',
          description:
              'Place uninitialized global variables in a common block'),
      Option(
          name: '-fcomplete-member-pointers',
          description:
              'Require member pointer base types to be complete if they would be significant under the Microsoft ABI'),
      Option(
          name: '-fconvergent-functions',
          description: 'Assume functions may be convergent'),
      Option(
          name: '-fcoroutines-ts',
          description: 'Enable support for the C++ Coroutines TS'),
      Option(
          name: '-fcoverage-mapping',
          description:
              'Generate coverage mapping to enable code coverage analysis'),
      Option(
          name: '-fcs-profile-generate',
          description:
              'Generate instrumented code to collect context sensitive execution counts into <directory>/default.profraw (overridden by LLVM_PROFILE_FILE env var)',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                isOptional: true,
                template: 'folders')
          ]),
      Option(
          name: '-fcuda-approx-transcendentals',
          description: 'Use approximate transcendental functions'),
      Option(
          name: '-fcuda-flush-denormals-to-zero',
          description:
              'Flush denormal floating point values to zero in CUDA device mode'),
      Option(
          name: '-fcuda-short-ptr',
          description:
              'Use 32-bit pointers for accessing const/local/shared address spaces'),
      Option(name: '-fcxx-exceptions', description: 'Enable C++ exceptions'),
      Option(
          name: '-fdata-sections',
          description: 'Place each data in its own section'),
      Option(
          name: '-fdebug-compilation-dir',
          description: 'The compilation directory to embed in the debug info',
          args: [
            Arg(name: 'value', description: 'Value', template: 'folders')
          ]),
      Option(
          name: '-fdebug-default-version',
          description:
              'Default DWARF version to use, if a -g option caused DWARF debug info to be produced',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fdebug-info-for-profiling',
          description:
              'Emit extra debug info to make sample profile more accurate'),
      Option(
          name: '-fdebug-macro', description: 'Emit macro debug information'),
      Option(
          name: '-fdebug-prefix-map',
          description: 'Remap file source paths in debug info',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fdebug-ranges-base-address',
          description:
              'Use DWARF base address selection entries in .debug_ranges'),
      Option(
          name: '-fdebug-types-section',
          description: 'Place debug types in their own section (ELF Only)'),
      Option(name: '-fdeclspec', description: 'Allow __declspec as a keyword'),
      Option(
          name: '-fdelayed-template-parsing',
          description:
              'Parse templated function definitions at the end of the translation unit'),
      Option(
          name: '-fdelete-null-pointer-checks',
          description:
              'Treat usage of null pointers as undefined behavior (default)'),
      Option(
          name: '-fdiagnostics-absolute-paths',
          description: 'Print absolute paths in diagnostics'),
      Option(
          name: '-fdiagnostics-hotness-threshold',
          description:
              'Prevent optimization remarks from being output if they do not have at least this profile count',
          args: [Arg(name: 'number', description: 'Number')]),
      Option(
          name: '-fdiagnostics-parseable-fixits',
          description: 'Print fix-its in machine parseable form'),
      Option(
          name: '-fdiagnostics-print-source-range-info',
          description: 'Print source range spans in numeric form'),
      Option(
          name: '-fdiagnostics-show-hotness',
          description: 'Enable profile hotness information in diagnostic line'),
      Option(
          name: '-fdiagnostics-show-note-include-stack',
          description: 'Display include stacks for diagnostic notes'),
      Option(
          name: '-fdiagnostics-show-option',
          description: 'Print option name with mappable diagnostics'),
      Option(
          name: '-fdiagnostics-show-template-tree',
          description:
              'Print a template comparison tree for differing templates'),
      Option(
          name: '-fdigraphs',
          description:
              'Enable alternative token representations \'<:\', \':>\', \'<%\', \'%>\', \'%:\', \'%:%:\' (default)'),
      Option(
          name: '-fdiscard-value-names',
          description: 'Discard value names in LLVM IR'),
      Option(
          name: '-fdollars-in-identifiers',
          description: 'Allow \'\$\' in identifiers'),
      Option(
          name: '-fdouble-square-bracket-attributes',
          description:
              'Enable \'[[]]\' attributes in all C and C++ language modes'),
      Option(name: '-fdwarf-directory-asm', description: ''),
      Option(
          name: '-fdwarf-exceptions',
          description: 'Use DWARF style exceptions'),
      Option(
          name: '-fembed-bitcode-marker',
          description: 'Embed placeholder LLVM IR data as a marker'),
      Option(
          name: '-fembed-bitcode',
          description: 'Embed LLVM bitcode (option: off, all, bitcode, marker)',
          args: [Arg(name: 'option', description: 'Option')]),
      Option(
          name: '-femit-all-decls',
          description: 'Emit all declarations, even if unused'),
      Option(
          name: '-femulated-tls',
          description: 'Use emutls functions to access thread_local variables'),
      Option(
          name: '-fenable-globaldse',
          description: 'Enable experimental global dead store elimination'),
      Option(
          name: '-fenable-matrix',
          description: 'Enable matrix data type and related builtin functions'),
      Option(
          name: '-fexceptions',
          description: 'Enable support for exception handling'),
      Option(
          name: '-fexperimental-new-constant-interpreter',
          description: 'Enable the experimental new constant interpreter'),
      Option(
          name: '-fexperimental-new-pass-manager',
          description: 'Enables an experimental new pass manager in LLVM'),
      Option(
          name: '-fexperimental-relative-c++-abi-vtables',
          description:
              'Use the experimental C++ class ABI for classes with virtual tables'),
      Option(
          name: '-fexperimental-strict-floating-point',
          description: 'Enables experimental strict floating point in LLVM'),
      Option(
          name: '-ffast-math',
          description: 'Allow aggressive, lossy floating-point optimizations'),
      Option(
          name: '-ffile-prefix-map',
          description:
              'Remap file source paths in debug info and predefined preprocessor macros',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ffine-grained-bitfield-accesses',
          description:
              'Use separate accesses for consecutive bitfield runs with legal widths and alignments'),
      Option(name: '-ffixed-point', description: 'Enable fixed point types'),
      Option(
          name: '-ffixed-r19',
          description: 'Reserve register r19 (Hexagon only)'),
      Option(
          name: '-ffixed-r9',
          description: 'Reserve the r9 register (ARM only)'),
      Option(
          name: '-ffixed-x10',
          description: 'Reserve the x10 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x11',
          description: 'Reserve the x11 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x12',
          description: 'Reserve the x12 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x13',
          description: 'Reserve the x13 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x14',
          description: 'Reserve the x14 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x15',
          description: 'Reserve the x15 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x16',
          description: 'Reserve the x16 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x17',
          description: 'Reserve the x17 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x18',
          description: 'Reserve the x18 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x19',
          description: 'Reserve the x19 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x1',
          description: 'Reserve the x1 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x20',
          description: 'Reserve the x20 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x21',
          description: 'Reserve the x21 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x22',
          description: 'Reserve the x22 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x23',
          description: 'Reserve the x23 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x24',
          description: 'Reserve the x24 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x25',
          description: 'Reserve the x25 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x26',
          description: 'Reserve the x26 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x27',
          description: 'Reserve the x27 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x28',
          description: 'Reserve the x28 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x29',
          description: 'Reserve the x29 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x2',
          description: 'Reserve the x2 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x30',
          description: 'Reserve the x30 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x31',
          description: 'Reserve the x31 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x3',
          description: 'Reserve the x3 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x4',
          description: 'Reserve the x4 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x5',
          description: 'Reserve the x5 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x6',
          description: 'Reserve the x6 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x7',
          description: 'Reserve the x7 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x8',
          description: 'Reserve the x8 register (AArch64/RISC-V only)'),
      Option(
          name: '-ffixed-x9',
          description: 'Reserve the x9 register (AArch64/RISC-V only)'),
      Option(
          name: '-fforce-dwarf-frame',
          description: 'Always emit a debug frame section'),
      Option(
          name: '-fforce-emit-vtables',
          description: 'Emits more virtual tables to improve devirtualization'),
      Option(
          name: '-fforce-enable-int128',
          description: 'Enable support for int128_t type'),
      Option(
          name: '-ffp-contract',
          description:
              'Form fused FP ops (e.g. FMAs): fast (everywhere) | on (according to FP_CONTRACT pragma) | off (never fuse). Default is \'fast\' for CUDA/HIP and \'on\' otherwise',
          args: [
            Arg(name: 'value', description: 'Value', suggestions: [
              FigSuggestion(name: 'fast'),
              FigSuggestion(name: 'on'),
              FigSuggestion(name: 'off')
            ])
          ]),
      Option(
          name: '-ffp-exception-behavior',
          description:
              'Specifies the exception behavior of floating-point operations',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ffp-model',
          description: 'Controls the semantics of floating-point calculations',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ffreestanding',
          description:
              'Assert that the compilation takes place in a freestanding environment'),
      Option(
          name: '-ffunction-sections',
          description: 'Place each function in its own section'),
      Option(
          name: '-fglobal-isel',
          description: 'Enables the global instruction selector'),
      Option(name: '-fgnu-inline-asm', description: ''),
      Option(
          name: '-fgnu-keywords',
          description:
              'Allow GNU-extension keywords regardless of language standard'),
      Option(
          name: '-fgnu-runtime',
          description:
              'Generate output compatible with the standard GNU Objective-C runtime'),
      Option(
          name: '-fgnu89-inline',
          description: 'Use the gnu89 inline semantics'),
      Option(
          name: '-fgnuc-version',
          description:
              'Sets various macros to claim compatibility with the given GCC version',
          args: [
            Arg(name: 'value', description: 'Value', defaultValue: '4.2.')
          ]),
      Option(name: '-fgpu-allow-device-init', description: 'Allow'),
      Option(
          name: '-fgpu-rdc',
          description:
              'Generate relocatable device code, also known as separate compilation mode'),
      Option(
          name: '-fhip-new-launch-api',
          description: 'Use new kernel launching API for HIP'),
      Option(
          name: '-fignore-exceptions',
          description:
              'Enable support for ignoring exception handling constructs'),
      Option(
          name: '-fimplicit-module-maps',
          description:
              'Implicitly search the file system for module map files'),
      Option(
          name: '-finline-functions', description: 'Inline suitable functions'),
      Option(name: '-finline-hint-functions', description: 'Inline'),
      Option(
          name: '-finstrument-function-entry-bare',
          description:
              'Instrument function entry only, after inlining, without arguments to the instrumentation call'),
      Option(
          name: '-finstrument-functions-after-inlining',
          description:
              'Like -finstrument-functions, but insert the calls after inlining'),
      Option(
          name: '-finstrument-functions',
          description: 'Generate calls to instrument function entry and exit'),
      Option(
          name: '-fintegrated-as',
          description: 'Enable the integrated assembler'),
      Option(name: '-fintegrated-cc1', description: 'Run cc1 in-process'),
      Option(
          name: '-fjump-tables',
          description: 'Use jump tables for lowering switches'),
      Option(
          name: '-fkeep-static-consts',
          description: 'Keep static const variables if unused'),
      Option(
          name: '-flax-vector-conversions',
          description: 'Enable implicit vector bit-casts',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-flto-jobs',
          description:
              'Controls the backend parallelism of -flto=thin (default of 0 means the number of threads will be derived from the number of CPUs detected)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-flto',
          description: 'Set LTO mode to either \'full\' or \'thin\'',
          args: [
            Arg(
                name: 'value',
                description: 'Value',
                isOptional: true,
                suggestions: [
                  FigSuggestion(name: 'full'),
                  FigSuggestion(name: 'thin')
                ])
          ]),
      Option(
          name: '-fmacro-prefix-map',
          description:
              'Remap file source paths in predefined preprocessor macros',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fmath-errno',
          description:
              'Require math functions to indicate errors by setting errno'),
      Option(
          name: '-fmax-tokens',
          description:
              'Max total number of preprocessed tokens for -Wmax-tokens',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fmax-type-align',
          description:
              'Specify the maximum alignment to enforce on pointers lacking an explicit alignment',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fmerge-all-constants',
          description: 'Allow merging of constants'),
      Option(
          name: '-fmessage-length',
          description:
              'Format message diagnostics so that they fit within N columns',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fmodule-file',
          description:
              'Specify the mapping of module name to precompiled module file, or load a module file if name is omitted',
          args: [Arg(name: '<name', description: '<nam')]),
      Option(
          name: '-fmodule-map-file',
          description: 'Load this module map file',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-fmodule-name',
          description: 'Specify the name of the module to build',
          args: [Arg(name: 'name', description: 'Name')]),
      Option(
          name: '-fmodules-cache-path',
          description: 'Specify the module cache path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-fmodules-decluse',
          description: 'Require declaration of modules used within a module'),
      Option(
          name: '-fmodules-disable-diagnostic-validation',
          description:
              'Disable validation of the diagnostic options when loading the module'),
      Option(
          name: '-fmodules-ignore-macro',
          description:
              'Ignore the definition of the given macro when building and loading modules',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fmodules-prune-after',
          description:
              'Specify the interval (in seconds) after which a module file will be considered unused',
          args: [Arg(name: 'seconds', description: 'Seconds')]),
      Option(
          name: '-fmodules-prune-interval',
          description:
              'Specify the interval (in seconds) between attempts to prune the module cache',
          args: [Arg(name: 'seconds', description: 'Seconds')]),
      Option(
          name: '-fmodules-search-all',
          description:
              'Search even non-imported modules to resolve references'),
      Option(
          name: '-fmodules-strict-decluse',
          description:
              'Like -fmodules-decluse but requires all headers to be in modules'),
      Option(
          name: '-fmodules-ts',
          description: 'Enable support for the C++ Modules TS'),
      Option(
          name: '-fmodules-user-build-path',
          description: 'Specify the module user build path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-fmodules-validate-input-files-content',
          description:
              'Validate PCM input files based on content if mtime differs'),
      Option(
          name: '-fmodules-validate-once-per-build-session',
          description:
              'Don\'t verify input files for the modules if the module has been successfully validated or loaded during this build session'),
      Option(
          name: '-fmodules-validate-system-headers',
          description:
              'Validate the system headers that a module depends on when loading the module'),
      Option(
          name: '-fmodules',
          description: 'Enable the \'modules\' language feature'),
      Option(
          name: '-fms-compatibility-version',
          description:
              'Dot-separated value representing the Microsoft compiler version number to report in _MSC_VER (0 = don\'t define it (default))',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fms-compatibility',
          description: 'Enable full Microsoft Visual C++ compatibility'),
      Option(
          name: '-fms-extensions',
          description:
              'Accept some non-standard constructs supported by the Microsoft compiler'),
      Option(
          name: '-fmsc-version',
          description:
              'Microsoft compiler version number to report in _MSC_VER (0 = don\'t define it (default))',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fnew-alignment',
          description:
              'Specifies the largest alignment guaranteed by \'::operator new(size_t)\'',
          args: [Arg(name: 'align', description: 'Alig')]),
      Option(name: '-fno-access-control', description: ''),
      Option(
          name: '-fno-addrsig',
          description: 'Don\'t emit an address-significance table'),
      Option(name: '-fno-allow-editor-placeholders', description: ''),
      Option(
          name: '-fno-apinotes-modules',
          description: 'Disable module-based external API notes support'),
      Option(
          name: '-fno-apinotes',
          description: 'Disable external API notes support'),
      Option(name: '-fno-asm-blocks', description: ''),
      Option(
          name: '-fno-assume-sane-operator-new',
          description:
              'Don\'t assume that C++\'s global operator new can\'t alias any pointer'),
      Option(
          name: '-fno-autolink',
          description:
              'Disable generation of linker directives for automatic library linking'),
      Option(name: '-fno-blocks', description: ''),
      Option(
          name: '-fno-builtin',
          description: 'Disable implicit builtin knowledge of functions',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fno-c++-static-destructors',
          description: 'Disable C++ static destructor registration'),
      Option(name: '-fno-caret-diagnostics', description: ''),
      Option(
          name: '-fno-char8_t',
          description: 'Disable C++ builtin type char8_t'),
      Option(
          name: '-fno-color-diagnostics',
          description: 'Disable colors in diagnostics'),
      Option(
          name: '-fno-common',
          description: 'Compile common globals like normal definitions'),
      Option(
          name: '-fno-complete-member-pointers',
          description:
              'Do not require member pointer base types to be complete if they would be significant under the Microsoft ABI'),
      Option(name: '-fno-constant-cfstrings', description: 'Disable'),
      Option(
          name: '-fno-constant-nsarray-literals',
          description:
              'Disable creation of CodeFoundation-type constant initializer `NSArray`s from array literals'),
      Option(
          name: '-fno-constant-nsdictionary-literals',
          description:
              'Disable creation of CodeFoundation-type constant initializer `NSDictionary`s from dictionary literals'),
      Option(
          name: '-fno-constant-nsnumber-literals',
          description:
              'Disable creation of CodeFoundation-type constant initializer `NSNumber`s from number literals'),
      Option(name: '-fno-coroutines-ts', description: ''),
      Option(
          name: '-fno-coverage-mapping',
          description: 'Disable code coverage analysis'),
      Option(
          name: '-fno-crash-diagnostics',
          description:
              'Disable auto-generation of preprocessed source files and a script for reproduction during a clang crash'),
      Option(
          name: '-fno-cuda-approx-transcendentals',
          description: 'Don\'t use approximate transcendental functions'),
      Option(name: '-fno-cuda-short-ptr', description: ''),
      Option(name: '-fno-cxx-exceptions', description: ''),
      Option(name: '-fno-data-sections', description: ''),
      Option(name: '-fno-debug-info-for-profiling', description: ''),
      Option(
          name: '-fno-debug-macro',
          description: 'Do not emit macro debug information'),
      Option(name: '-fno-debug-ranges-base-address', description: ''),
      Option(
          name: '-fno-declspec',
          description: 'Disallow __declspec as a keyword'),
      Option(
          name: '-fno-delayed-template-parsing',
          description: 'Disable delayed template parsing'),
      Option(
          name: '-fno-delete-null-pointer-checks',
          description:
              'Do not treat usage of null pointers as undefined behavior'),
      Option(
          name: '-fno-diagnostics-fixit-info',
          description: 'Do not include fixit information in diagnostics'),
      Option(
          name: '-fno-digraphs',
          description:
              'Disallow alternative token representations \'<:\', \':>\', \'<%\', \'%>\', \'%:\', \'%:%:\''),
      Option(
          name: '-fno-discard-value-names',
          description: 'Do not discard value names in LLVM IR'),
      Option(
          name: '-fno-dollars-in-identifiers',
          description: 'Disallow \'\$\' in identifiers'),
      Option(
          name: '-fno-double-square-bracket-attributes',
          description:
              'Disable \'[[]]\' attributes in all C and C++ language modes'),
      Option(name: '-fno-dwarf-directory-asm', description: ''),
      Option(name: '-fno-elide-constructors', description: 'Disable'),
      Option(
          name: '-fno-elide-type',
          description: 'Do not elide types when printing diagnostics'),
      Option(
          name: '-fno-exceptions',
          description: 'Disable support for exception handling'),
      Option(
          name: '-fno-experimental-new-pass-manager',
          description: 'Disables an experimental new pass manager in LLVM'),
      Option(
          name: '-fno-experimental-relative-c++-abi-vtables',
          description:
              'Do not use the experimental C++ class ABI for classes with virtual tables'),
      Option(name: '-fno-fast-math', description: ''),
      Option(
          name: '-fno-fine-grained-bitfield-accesses',
          description:
              'Use large-integer access for consecutive bitfield runs'),
      Option(
          name: '-fno-fixed-point', description: 'Disable fixed point types'),
      Option(name: '-fno-force-dwarf-frame', description: ''),
      Option(name: '-fno-force-emit-vtables', description: ''),
      Option(
          name: '-fno-force-enable-int128',
          description: 'Disable support for int128_t type'),
      Option(name: '-fno-function-sections', description: ''),
      Option(
          name: '-fno-global-isel',
          description: 'Disables the global instruction selector'),
      Option(
          name: '-fno-gnu-inline-asm',
          description: 'Disable GNU style inline asm'),
      Option(name: '-fno-gnu89-inline', description: ''),
      Option(
          name: '-fno-gpu-allow-device-init',
          description: 'Don\'t allow device side init function in HIP'),
      Option(name: '-fno-gpu-rdc', description: ''),
      Option(name: '-fno-hip-new-launch-api', description: 'Don\'t'),
      Option(
          name: '-fno-integrated-as',
          description: 'Disable the integrated assembler'),
      Option(
          name: '-fno-integrated-cc1',
          description: 'Spawn a separate process for each cc1'),
      Option(
          name: '-fno-jump-tables',
          description: 'Do not use jump tables for lowering switches'),
      Option(name: '-fno-keep-static-consts', description: 'Don\'t'),
      Option(name: '-fno-lto', description: 'Disable LTO mode (default)'),
      Option(name: '-fno-math-errno', description: ''),
      Option(
          name: '-fno-merge-all-constants',
          description: 'Disallow merging of constants'),
      Option(
          name: '-fno-no-access-control',
          description: 'Disable C++ access control'),
      Option(
          name: '-fno-objc-infer-related-result-type',
          description:
              'Do not infer Objective-C related result type based on method family'),
      Option(
          name: '-fno-operator-names',
          description:
              'Do not treat C++ operator name keywords as synonyms for operators'),
      Option(
          name: '-fno-pch-codegen',
          description:
              'Do not generate code for uses of this PCH that assumes an explicit object file will be built for the PCH'),
      Option(
          name: '-fno-pch-debuginfo',
          description:
              'Do not generate debug info for types in an object file built from this PCH and do not generate them elsewhere'),
      Option(
          name: '-fno-plt',
          description:
              'Use GOT indirection instead of PLT to make external function calls (x86 only)'),
      Option(
          name: '-fno-preserve-as-comments',
          description: 'Do not preserve comments in inline assembly'),
      Option(
          name: '-fno-profile-generate',
          description: 'Disable generation of profile instrumentation'),
      Option(
          name: '-fno-profile-instr-generate',
          description: 'Disable generation of profile instrumentation'),
      Option(
          name: '-fno-profile-instr-use',
          description:
              'Disable using instrumentation data for profile-guided optimization'),
      Option(
          name: '-fno-ptrauth-abi-version',
          description: 'Disable Pointer Authentication ABI versioning'),
      Option(
          name: '-fno-ptrauth-kernel-abi-version',
          description: 'Disable Pointer Authentication kernel ABI versioning'),
      Option(
          name: '-fno-register-global-dtors-with-atexit',
          description:
              'Don\'t use atexit or __cxa_atexit to register global destructors'),
      Option(name: '-fno-reroll-loops', description: ''),
      Option(name: '-fno-rewrite-imports', description: ''),
      Option(name: '-fno-rewrite-includes', description: ''),
      Option(name: '-fno-ropi', description: ''),
      Option(
          name: '-fno-rtlib-add-rpath',
          description:
              'Do not add -rpath with architecture-specific resource directory to the linker flags'),
      Option(
          name: '-fno-rtti-data',
          description: 'Disable generation of RTTI data'),
      Option(
          name: '-fno-rtti',
          description: 'Disable generation of rtti information'),
      Option(name: '-fno-rwpi', description: ''),
      Option(
          name: '-fno-sanitize-address-poison-custom-array-cookie',
          description:
              'Disable poisoning array cookies when using custom operator new[] in AddressSanitizer'),
      Option(
          name: '-fno-sanitize-address-use-after-scope',
          description: 'Disable use-after-scope detection in AddressSanitizer'),
      Option(
          name: '-fno-sanitize-address-use-odr-indicator',
          description: 'Disable ODR indicator globals'),
      Option(name: '-fno-sanitize-blacklist', description: 'Don\'t'),
      Option(
          name: '-fno-sanitize-cfi-canonical-jump-tables',
          description:
              'Do not make the jump table addresses canonical in the symbol table'),
      Option(
          name: '-fno-sanitize-cfi-cross-dso',
          description:
              'Disable control flow integrity (CFI) checks for cross-DSO calls'),
      Option(
          name: '-fno-sanitize-coverage',
          description:
              'Disable specified features of coverage instrumentation for Sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fno-sanitize-memory-track-origins',
          description: 'Disable origins tracking in MemorySanitizer'),
      Option(
          name: '-fno-sanitize-memory-use-after-dtor',
          description:
              'Disable use-after-destroy detection in MemorySanitizer'),
      Option(
          name: '-fno-sanitize-recover',
          description: 'Disable recovery for specified sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fno-sanitize-stats',
          description: 'Disable sanitizer statistics gathering'),
      Option(
          name: '-fno-sanitize-thread-atomics',
          description:
              'Disable atomic operations instrumentation in ThreadSanitizer'),
      Option(
          name: '-fno-sanitize-thread-func-entry-exit',
          description:
              'Disable function entry/exit instrumentation in ThreadSanitizer'),
      Option(
          name: '-fno-sanitize-thread-memory-access',
          description:
              'Disable memory access instrumentation in ThreadSanitizer'),
      Option(
          name: '-fno-sanitize-trap',
          description: 'Disable trapping for specified sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fno-short-wchar',
          description: 'Force wchar_t to be an unsigned int'),
      Option(
          name: '-fno-show-column',
          description: 'Do not include column number on diagnostics'),
      Option(
          name: '-fno-show-source-location',
          description:
              'Do not include source location information with diagnostics'),
      Option(name: '-fno-signed-char', description: 'Char is unsigned'),
      Option(
          name: '-fno-signed-zeros',
          description:
              'Allow optimizations that ignore the sign of floating point zeros'),
      Option(
          name: '-fno-spell-checking', description: 'Disable spell-checking'),
      Option(name: '-fno-split-lto-unit', description: ''),
      Option(name: '-fno-stack-check', description: 'Disable stack checking'),
      Option(
          name: '-fno-stack-clash-protection',
          description: 'Disable stack clash protection'),
      Option(
          name: '-fno-stack-protector',
          description: 'Disable the use of stack protectors'),
      Option(name: '-fno-stack-size-section', description: ''),
      Option(
          name: '-fno-standalone-debug',
          description:
              'Limit debug information produced to reduce size of debug binary'),
      Option(
          name: '-fno-strict-float-cast-overflow',
          description:
              'Relax language rules and try to match the behavior of the target\'s native float-to-int conversion instructions'),
      Option(
          name: '-fno-strict-return',
          description:
              'Don\'t treat control flow paths that fall off the end of a non-void function as unreachable'),
      Option(
          name: '-fno-sycl',
          description: 'Disable SYCL kernels compilation for device'),
      Option(
          name: '-fno-temp-file',
          description:
              'Directly create compilation output files. This may lead to incorrect incremental builds if the compiler crashes'),
      Option(name: '-fno-threadsafe-statics', description: 'Do'),
      Option(
          name: '-fno-trigraphs',
          description: 'Do not process trigraph sequences'),
      Option(name: '-fno-unique-basic-block-section-names', description: ''),
      Option(name: '-fno-unique-internal-linkage-names', description: ''),
      Option(
          name: '-fno-unique-section-names',
          description: 'Don\'t use unique names for text and data sections'),
      Option(name: '-fno-unroll-loops', description: 'Turn off loop unroller'),
      Option(
          name: '-fno-use-cxa-atexit',
          description: 'Don\'t use __cxa_atexit for calling destructors'),
      Option(
          name: '-fno-use-init-array',
          description: 'Use .ctors/.dtors instead of .init_array/.fini_array'),
      Option(name: '-fno-use-line-directives', description: ''),
      Option(name: '-fno-virtual-function-elimination', description: ''),
      Option(
          name: '-fno-visibility-inlines-hidden-static-local-var',
          description:
              'Disables -fvisibility-inlines-hidden-static-local-var (this is the default on non-darwin targets)'),
      Option(name: '-fno-whole-program-vtables', description: ''),
      Option(name: '-fno-xray-always-emit-customevents', description: ''),
      Option(name: '-fno-xray-always-emit-typedevents', description: ''),
      Option(
          name: '-fno-xray-function-index',
          description:
              'Omit function index section at the expense of single-function patching performance'),
      Option(name: '-fno-xray-ignore-loops', description: ''),
      Option(name: '-fno-xray-instrument', description: ''),
      Option(
          name: '-fno-zero-initialized-in-bss',
          description: 'Don\'t place zero initialized data in BSS'),
      Option(name: '-fno-zvector', description: ''),
      Option(
          name: '-fobjc-arc-exceptions',
          description:
              'Use EH-safe code when synthesizing retains and releases in -fobjc-arc'),
      Option(
          name: '-fobjc-arc',
          description:
              'Synthesize retain and release calls for Objective-C pointers'),
      Option(
          name: '-fobjc-exceptions',
          description: 'Enable Objective-C exceptions'),
      Option(
          name: '-fobjc-relative-method-lists',
          description: 'Enable relative method lists'),
      Option(
          name: '-fobjc-runtime',
          description:
              'Specify the target Objective-C runtime kind and version',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fobjc-weak',
          description: 'Enable ARC-style weak references in Objective-C'),
      Option(
          name: '-fopenmp-simd',
          description: 'Emit OpenMP code only for SIMD-based constructs'),
      Option(
          name: '-fopenmp-targets',
          description:
              'Specify comma-separated list of triples OpenMP offloading targets to be supported',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fopenmp',
          description: 'Parse OpenMP pragmas and generate parallel code'),
      Option(
          name: '-foptimization-record-file',
          description:
              'Specify the output name of the file containing the optimization remarks. Implies -fsave-optimization-record. On Darwin platforms, this cannot be used with multiple -arch <arch> options',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-foptimization-record-passes',
          description:
              'Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)',
          args: [Arg(name: 'regex', description: 'Rege')]),
      Option(
          name: '-forder-file-instrumentation',
          description:
              'Generate instrumented code to collect order file into default.profraw file (overridden by \'=\' form of option or LLVM_PROFILE_FILE env var)'),
      Option(
          name: '-fpack-struct',
          description: 'Specify the default maximum struct packing alignment',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fpascal-strings',
          description: 'Recognize and construct Pascal-style string literals'),
      Option(
          name: '-fpass-plugin',
          description:
              'Load pass plugin from a dynamic shared object file (only with new pass manager)',
          args: [Arg(name: 'dsopath', description: 'Dsopath')]),
      Option(
          name: '-fpatchable-function-entry',
          description:
              'Generate M NOPs before function entry and N-M NOPs after function entry',
          args: [Arg(name: 'N,M', description: 'N,')]),
      Option(
          name: '-fpcc-struct-return',
          description:
              'Override the default ABI to return all structs on the stack'),
      Option(
          name: '-fpch-codegen',
          description:
              'Generate code for uses of this PCH that assumes an explicit object file will be built for the PCH'),
      Option(
          name: '-fpch-debuginfo',
          description:
              'Generate debug info for types in an object file built from this PCH and do not generate them elsewhere'),
      Option(
          name: '-fpch-instantiate-templates',
          description: 'Instantiate templates already while building a PCH'),
      Option(
          name: '-fpch-validate-input-files-content',
          description:
              'Validate PCH input files based on content if mtime differs'),
      Option(name: '-fplt', description: ''),
      Option(
          name: '-fplugin',
          description: 'Load the named plugin (dynamic shared object)',
          args: [Arg(name: 'dsopath', description: 'Dsopath')]),
      Option(
          name: '-fprebuilt-module-path',
          description: 'Specify the prebuilt module path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(name: '-fpreserve-as-comments', description: ''),
      Option(
          name: '-fprofile-exclude-files',
          description:
              'Instrument only functions from files where names don\'t match all the regexes separated by a semi-colon',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fprofile-filter-files',
          description:
              'Instrument only functions from files where names match any regex separated by a semi-colon',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fprofile-generate',
          description:
              'Generate instrumented code to collect execution counts into <directory>/default.profraw (overridden by LLVM_PROFILE_FILE env var)',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                isOptional: true,
                template: 'folders')
          ]),
      Option(
          name: '-fprofile-instr-generate',
          description:
              'Generate instrumented code to collect execution counts into <file> (overridden by LLVM_PROFILE_FILE env var)',
          args: [
            Arg(
                name: 'file',
                description: 'File',
                isOptional: true,
                template: 'filepaths')
          ]),
      Option(
          name: '-fprofile-instr-use',
          description:
              'Use instrumentation data for profile-guided optimization',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fprofile-remapping-file',
          description:
              'Use the remappings described in <file> to match the profile data against names in the program',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-fprofile-sample-accurate',
          description: 'Specifies that the sample profile is accurate'),
      Option(
          name: '-fprofile-sample-use',
          description: 'Enable sample-based profile guided optimizations',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fprofile-use',
          description:
              'Use instrumentation data for profile-guided optimization. If pathname is a directory, it reads from <pathname>/default.profdata. Otherwise, it reads from file <pathname>',
          args: [Arg(name: 'pathname', description: 'Pathname')]),
      Option(
          name: '-fptrauth-abi-version',
          description: 'Pointer Authentication ABI version',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fptrauth-auth-traps',
          description: 'Enable traps on authentication failures'),
      Option(
          name: '-fptrauth-block-descriptor-pointers',
          description: 'Enable signing block descriptors'),
      Option(
          name: '-fptrauth-calls',
          description:
              'Enable signing and authentication of all indirect calls'),
      Option(
          name: '-fptrauth-function-pointer-type-discrimination',
          description: 'Enabling type discrimination on C function pointers'),
      Option(
          name: '-fptrauth-indirect-gotos',
          description:
              'Enable signing and authentication of indirect goto targets'),
      Option(
          name: '-fptrauth-intrinsics',
          description: 'Enable pointer-authentication intrinsics'),
      Option(
          name: '-fptrauth-kernel-abi-version',
          description: 'Enable Pointer Authentication kernel ABI version'),
      Option(
          name: '-fptrauth-objc-isa-masking',
          description:
              'Pre- and post-authentication masking mode of objective-c isa pointers'),
      Option(
          name: '-fptrauth-objc-isa-mode',
          description:
              'Authentication mode for ObjC isa field. Full auth if unspecified',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fptrauth-objc-isa',
          description:
              'Enable signing and authentication of Objective-C object\'s \'isa\' field'),
      Option(
          name: '-fptrauth-returns',
          description: 'Enable signing and authentication of return addresses'),
      Option(
          name: '-fptrauth-soft',
          description: 'Enable software lowering of pointer authentication'),
      Option(
          name: '-fptrauth-vtable-pointer-address-discrimination',
          description: 'Enable address discrimination of vtable pointers'),
      Option(
          name: '-fptrauth-vtable-pointer-type-discrimination',
          description: 'Enable type discrimination of vtable pointers'),
      Option(
          name: '-freciprocal-math',
          description: 'Allow division operations to be reassociated'),
      Option(
          name: '-freg-struct-return',
          description:
              'Override the default ABI to return small structs in registers'),
      Option(
          name: '-fregister-global-dtors-with-atexit',
          description:
              'Use atexit or __cxa_atexit to register global destructors'),
      Option(
          name: '-frelaxed-template-template-args',
          description:
              'Enable C++17 relaxed template template argument matching'),
      Option(name: '-freroll-loops', description: 'Turn on loop reroller'),
      Option(name: '-frewrite-imports', description: ''),
      Option(name: '-frewrite-includes', description: ''),
      Option(
          name: '-fropi',
          description:
              'Generate read-only position independent code (ARM only)'),
      Option(
          name: '-frtlib-add-rpath',
          description:
              'Add -rpath with architecture-specific resource directory to the linker flags'),
      Option(name: '-frtti-data', description: ''),
      Option(name: '-frtti', description: ''),
      Option(
          name: '-frwpi',
          description:
              'Generate read-write position independent code (ARM only)'),
      Option(
          name: '-fsanitize-address-field-padding',
          description: 'Level of field padding for AddressSanitizer',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-address-globals-dead-stripping',
          description:
              'Enable linker dead stripping of globals in AddressSanitizer'),
      Option(
          name: '-fsanitize-address-poison-custom-array-cookie',
          description:
              'Enable poisoning array cookies when using custom operator new[] in AddressSanitizer'),
      Option(
          name: '-fsanitize-address-use-after-scope',
          description: 'Enable use-after-scope detection in AddressSanitizer'),
      Option(
          name: '-fsanitize-address-use-odr-indicator',
          description:
              'Enable ODR indicator globals to avoid false ODR violation reports in partially sanitized programs at the cost of an increase in binary size'),
      Option(
          name: '-fsanitize-blacklist',
          description: 'Path to blacklist file for sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-cfi-canonical-jump-tables',
          description:
              'Make the jump table addresses canonical in the symbol table'),
      Option(
          name: '-fsanitize-cfi-cross-dso',
          description:
              'Enable control flow integrity (CFI) checks for cross-DSO calls'),
      Option(
          name: '-fsanitize-cfi-icall-generalize-pointers',
          description:
              'Generalize pointers in CFI indirect call type signature checks'),
      Option(
          name: '-fsanitize-coverage-allowlist',
          description:
              'Restrict sanitizer coverage instrumentation exclusively to modules and functions that match the provided special case list, except the blocked ones',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-coverage-blacklist',
          description: 'Deprecated, use -fsanitize-coverage-blocklist= instead',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-coverage-blocklist',
          description:
              'Disable sanitizer coverage instrumentation for modules and functions that match the provided special case list, even the allowed ones',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-coverage-whitelist',
          description: 'Deprecated, use -fsanitize-coverage-allowlist= instead',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-coverage',
          description:
              'Specify the type of coverage instrumentation for Sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-hwaddress-abi',
          description:
              'Select the HWAddressSanitizer ABI to target (interceptor or platform, default interceptor). This option is currently unused',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-memory-track-origins',
          description: 'Enable origins tracking in MemorySanitizer',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-memory-use-after-dtor',
          description: 'Enable use-after-destroy detection in MemorySanitizer'),
      Option(
          name: '-fsanitize-recover',
          description: 'Enable recovery for specified sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-stats',
          description: 'Enable sanitizer statistics gathering'),
      Option(
          name: '-fsanitize-system-blacklist',
          description: 'Path to system blacklist file for sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-thread-atomics',
          description:
              'Enable atomic operations instrumentation in ThreadSanitizer (default)'),
      Option(
          name: '-fsanitize-thread-func-entry-exit',
          description:
              'Enable function entry/exit instrumentation in ThreadSanitizer (default)'),
      Option(
          name: '-fsanitize-thread-memory-access',
          description:
              'Enable memory access instrumentation in ThreadSanitizer (default)'),
      Option(
          name: '-fsanitize-trap',
          description: 'Enable trapping for sanitizers',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fsanitize-undefined-strip-path-components',
          description:
              'Strip (or keep only, if negative) a given number of path components when emitting check metadata',
          args: [Arg(name: 'number', description: 'Number')]),
      Option(
          name: '-fsanitize',
          description:
              'Turn on runtime checks for various forms of undefined or suspicious behavior. See user manual for available checks',
          args: [Arg(name: 'check', description: 'Chec')]),
      Option(
          name: '-fsave-optimization-record',
          description:
              'Generate an optimization record file in a specific format',
          args: [Arg(name: 'format', description: 'Format')]),
      Option(name: '-fseh-exceptions', description: 'Use SEH style exceptions'),
      Option(
          name: '-fshort-enums',
          description:
              'Allocate to an enum type only as many bytes as it needs for the declared range of possible values'),
      Option(
          name: '-fshort-wchar',
          description: 'Force wchar_t to be a short unsigned int'),
      Option(name: '-fshow-column', description: ''),
      Option(
          name: '-fshow-overloads',
          description:
              'Which overload candidates to show when overload resolution fails: best|all; defaults to all',
          args: [
            Arg(name: 'value', description: 'Value', suggestions: [
              FigSuggestion(name: 'best'),
              FigSuggestion(name: 'all')
            ])
          ]),
      Option(name: '-fsigned-char', description: 'Char is signed'),
      Option(
          name: '-fsized-deallocation',
          description: 'Enable C++14 sized global deallocation functions'),
      Option(
          name: '-fsjlj-exceptions', description: 'Use SjLj style exceptions'),
      Option(
          name: '-fslp-vectorize',
          description:
              'Enable the superword-level parallelism vectorization passes'),
      Option(
          name: '-fsmall-block-descriptors',
          description: 'Enable small block descriptors'),
      Option(
          name: '-fsplit-dwarf-inlining',
          description:
              'Provide minimal debug info in the object/executable to facilitate online symbolication/stack traces in the absence of .dwo/.dwp files when using Split DWARF'),
      Option(
          name: '-fsplit-lto-unit',
          description: 'Enables splitting of the LTO unit'),
      Option(name: '-fstack-check', description: 'Enable stack checking'),
      Option(
          name: '-fstack-clash-protection',
          description: 'Enable stack clash protection'),
      Option(
          name: '-fstack-protector-all',
          description: 'Enable stack protectors for all functions'),
      Option(
          name: '-fstack-protector-strong',
          description:
              'Enable stack protectors for some functions vulnerable to stack smashing. Compared to -fstack-protector, this uses a stronger heuristic that includes functions containing arrays of any size (and any type), as well as any calls to alloca or the taking of an address from a local variable'),
      Option(
          name: '-fstack-protector',
          description:
              'Enable stack protectors for some functions vulnerable to stack smashing. This uses a loose heuristic which considers functions vulnerable if they contain a char (or 8bit integer) array or constant sized calls to alloca, which are of greater size than ssp-buffer-size (default: 8 bytes). All variable sized calls to alloca are considered vulnerable'),
      Option(
          name: '-fstack-size-section',
          description:
              'Emit section containing metadata on function stack sizes'),
      Option(
          name: '-fstandalone-debug',
          description:
              'Emit full debug info for all types used by the program'),
      Option(
          name: '-fstrict-enums',
          description:
              'Enable optimizations based on the strict definition of an enum\'s value range'),
      Option(
          name: '-fstrict-float-cast-overflow',
          description:
              'Assume that overflowing float-to-int casts are undefined (default)'),
      Option(name: '-fstrict-return', description: ''),
      Option(
          name: '-fstrict-vtable-pointers',
          description:
              'Enable optimizations based on the strict rules for overwriting polymorphic C++ objects'),
      Option(
          name: '-fsycl',
          description: 'Enable SYCL kernels compilation for device'),
      Option(
          name: '-fsystem-module',
          description:
              'Build this module as a system module. Only used with -emit-module'),
      Option(
          name: '-ftarget-variant-availability-checks',
          description:
              'Enable availability checks for the target variant platform'),
      Option(
          name: '-fthin-link-bitcode',
          description:
              'Write minimized bitcode to <file> for the ThinLTO thin link only',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fthinlto-index',
          description:
              'Perform ThinLTO importing using provided function summary index',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ftime-trace-granularity',
          description:
              'Minimum time granularity (in microseconds) traced by time profiler',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ftime-trace',
          description:
              'Turn on time profiler. Generates JSON file based on output filename'),
      Option(
          name: '-ftrap-function',
          description:
              'Issue call to specified function rather than a trap instruction',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ftrapv-handler',
          description: 'Specify the function to be called on overflow',
          args: [Arg(name: 'function name', description: 'Function nam')]),
      Option(name: '-ftrapv', description: 'Trap on integer overflow'),
      Option(name: '-ftrigraphs', description: 'Process trigraph sequences'),
      Option(
          name: '-ftrivial-auto-var-init-stop-after',
          description:
              'Stop initializing trivial automatic stack variables after the specified number of instances',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ftrivial-auto-var-init',
          description: 'Initialize trivial automatic stack variables',
          args: [
            Arg(
                name: 'value',
                description: 'Value',
                defaultValue: 'uninitialized',
                suggestions: [
                  FigSuggestion(name: 'uninitialized'),
                  FigSuggestion(name: 'pattern')
                ])
          ]),
      Option(
          name: '-funique-basic-block-section-names',
          description: 'Use unique names for basic block sections (ELF Only)'),
      Option(
          name: '-funique-internal-linkage-names',
          description:
              'Uniqueify Internal Linkage Symbol Names by appending the MD5 hash of the module path'),
      Option(name: '-funique-section-names', description: ''),
      Option(name: '-funroll-loops', description: 'Turn on loop unroller'),
      Option(name: '-fuse-init-array', description: ''),
      Option(
          name: '-fuse-line-directives',
          description: 'Use #line in preprocessed output'),
      Option(
          name: '-fvalidate-ast-input-files-content',
          description:
              'Compute and store the hash of input files used to build an AST. Files with mismatching mtime\'s are considered valid if both contents is identical'),
      Option(
          name: '-fveclib',
          description: 'Use the given vector functions library',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fvectorize',
          description: 'Enable the loop vectorization passes'),
      Option(
          name: '-fverbose-asm',
          description: 'Generate verbose assembly output'),
      Option(
          name: '-fvirtual-function-elimination',
          description:
              'Enables dead virtual function elimination optimization. Requires -flto=full'),
      Option(
          name: '-fvisibility-global-new-delete-hidden',
          description:
              'Give global C++ operator new and delete declarations hidden visibility'),
      Option(
          name: '-fvisibility-inlines-hidden-static-local-var',
          description:
              'When -fvisibility-inlines-hidden is enabled, static variables in inline C++ member functions will also be given hidden visibility by default'),
      Option(
          name: '-fvisibility-inlines-hidden',
          description:
              'Give inline C++ member functions hidden visibility by default'),
      Option(
          name: '-fvisibility-ms-compat',
          description:
              'Give global types \'default\' visibility and global functions and variables \'hidden\' visibility by default'),
      Option(
          name: '-fvisibility',
          description:
              'Set the default symbol visibility for all global declarations',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fwasm-exceptions',
          description: 'Use WebAssembly style exceptions'),
      Option(name: '-fwhole-program-vtables', description: 'Enables'),
      Option(
          name: '-fwrapv',
          description: 'Treat signed integer overflow as two\'s complement'),
      Option(
          name: '-fwritable-strings',
          description: 'Store string literals as writable data'),
      Option(
          name: '-fxray-always-emit-customevents',
          description:
              'Always emit __xray_customevent(...) calls even if the containing function is not always instrumented'),
      Option(
          name: '-fxray-always-emit-typedevents',
          description:
              'Always emit __xray_typedevent(...) calls even if the containing function is not always instrumented'),
      Option(
          name: '-fxray-always-instrument',
          description:
              'DEPRECATED: Filename defining the whitelist for imbuing the \'always instrument\' XRay attribute',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fxray-attr-list',
          description:
              'Filename defining the list of functions/types for imbuing XRay attributes',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-fxray-function-index', description: ''),
      Option(
          name: '-fxray-ignore-loops',
          description:
              'Don\'t instrument functions with loops unless they also meet the minimum function size'),
      Option(
          name: '-fxray-instruction-threshold',
          description: 'Sets the minimum function size to instrument with XRay',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fxray-instrumentation-bundle',
          description:
              'Select which XRay instrumentation points to emit. \'function\' includes both \'function-entry\' and \'function-exit\'',
          args: [
            Arg(
                name: 'fxray-instrumentation-bundle',
                suggestions: [
                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'function-entry'),
                  FigSuggestion(name: 'function-exit'),
                  FigSuggestion(name: 'function'),
                  FigSuggestion(name: 'custom')
                ],
                defaultValue: 'all')
          ]),
      Option(
          name: '-fxray-instrument',
          description:
              'Generate XRay instrumentation sleds on function entry and exit'),
      Option(
          name: '-fxray-link-deps',
          description: 'Tells clang to add the link dependencies for XRay'),
      Option(
          name: '-fxray-modes',
          description:
              'List of modes to link in by default into XRay instrumented binaries',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-fxray-never-instrument',
          description:
              'DEPRECATED: Filename defining the whitelist for imbuing the \'never instrument\' XRay attribute',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-fzero-initialized-in-bss', description: ''),
      Option(
          name: '-fzvector',
          description: 'Enable System z vector language extension'),
      Option(
          name: '-F',
          description: 'Add directory to framework include search path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--gcc-toolchain',
          description: 'Use the gcc toolchain at the given directory',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-gcodeview-ghash',
          description: 'Emit type record hashes in a .debug\$H section'),
      Option(
          name: '-gcodeview',
          description: 'Generate CodeView debug information'),
      Option(
          name: '-gdwarf-2',
          description:
              'Generate source-level debug information with dwarf version 2'),
      Option(
          name: '-gdwarf-3',
          description:
              'Generate source-level debug information with dwarf version 3'),
      Option(
          name: '-gdwarf-4',
          description:
              'Generate source-level debug information with dwarf version 4'),
      Option(
          name: '-gdwarf-5',
          description:
              'Generate source-level debug information with dwarf version 5'),
      Option(
          name: '-gdwarf',
          description:
              'Generate source-level debug information with the default dwarf version'),
      Option(
          name: '-gembed-source',
          description: 'Embed source text in DWARF debug sections'),
      Option(
          name: '-gline-directives-only',
          description: 'Emit debug line info directives only'),
      Option(
          name: '-gline-tables-only',
          description: 'Emit debug line number tables only'),
      Option(
          name: '-gmodules',
          description:
              'Generate debug info with external references to clang modules or precompiled headers'),
      Option(
          name: '-gno-embed-source',
          description:
              'Restore the default behavior of not embedding source text in DWARF debug sections'),
      Option(name: '-gno-inline-line-tables', description: 'Don\'t'),
      Option(
          name: '--gpu-max-threads-per-block',
          description:
              'Default max threads per block for kernel launch bounds for HIP',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-gsplit-dwarf',
          description:
              'Set DWARF fission mode to either \'split\' or \'single\'',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-gz',
          description: 'DWARF debug sections compression type',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-G',
          description:
              'Put objects of at most <size> bytes into small data section (MIPS / Hexagon)',
          args: [Arg(name: 'size', description: 'Siz')]),
      Option(
          name: '-g', description: 'Generate source-level debug information'),
      Option(
          name: '--help-hidden',
          description: 'Display help for hidden options'),
      Option(name: '-help', description: 'Display available options'),
      Option(
          name: '--hip-device-lib',
          description: 'HIP device library',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--hip-link',
          description: 'Link clang-offload-bundler bundles for HIP'),
      Option(
          name: '--hip-version',
          description: 'HIP version in the format of major.minor.patch',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-H', description: 'Show header includes and nesting depth'),
      Option(
          name: '-I-',
          description:
              'Restrict all prior -I flags to double-quoted inclusion and remove current directory from include path'),
      Option(
          name: '-iapinotes-modules',
          description:
              'Add directory to the API notes search path referenced by module name',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-ibuiltininc',
          description:
              'Enable builtin #include directories even when -nostdinc is used before or after -ibuiltininc. Using -nobuiltininc after the option disables it'),
      Option(
          name: '-idirafter',
          description: 'Add directory to AFTER include search path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-iframeworkwithsysroot',
          description:
              'Add directory to SYSTEM framework search path, absolute paths are relative to -isysroot',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-iframework',
          description: 'Add directory to SYSTEM framework search path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-imacros',
          description: 'Include macros from file before parsing',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-include-pch',
          description: 'Include precompiled header file',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-include',
          description: 'Include file before parsing',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-index-header-map',
          description:
              'Make the next included directory (-I or -F) an indexer header map'),
      Option(
          name: '-index-ignore-system-symbols',
          description: 'Ignore symbols from system headers'),
      Option(
          name: '-index-record-codegen-name',
          description: 'Record the codegen name for symbols'),
      Option(
          name: '-index-store-path',
          description: 'Enable indexing with the specified data store path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-iprefix',
          description: 'Set the -iwithprefix/-iwithprefixbefore prefix',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-iquote',
          description: 'Add directory to QUOTE include search path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-isysroot',
          description: 'Set the system root directory (usually /)',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-isystem-after',
          description: 'Add directory to end of the SYSTEM include search path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-isystem',
          description: 'Add directory to SYSTEM include search path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-ivfsoverlay',
          description:
              'Overlay the virtual filesystem described by file over the real file system',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-iwithprefixbefore',
          description: 'Set directory to include search path with prefix',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-iwithprefix',
          description:
              'Set directory to SYSTEM include search path with prefix',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-iwithsysroot',
          description:
              'Add directory to SYSTEM include search path, absolute paths are relative to -isysroot',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-I',
          description: 'Add directory to include search path',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '--libomptarget-nvptx-path',
          description: 'Path to libomptarget-nvptx libraries',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-L',
          description: 'Add directory to library search path',
          args: [Arg(name: 'dir', description: 'Dir', template: 'folders')]),
      Option(
          name: '-mabicalls',
          description:
              'Enable SVR4-style position-independent code (Mips only)'),
      Option(
          name: '-maix-struct-return',
          description: 'Return all structs in memory (PPC32 only)'),
      Option(
          name: '-malign-branch-boundary',
          description: 'Specify the boundary\'s size to align branches',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-malign-branch',
          description: 'Specify types of branches to align',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-malign-double',
          description: 'Align doubles to two words in structs (x86 only)'),
      Option(
          name: '-mbackchain',
          description: 'Link stack frames through backchain on System Z'),
      Option(
          name: '-mbranch-protection',
          description:
              'Enforce targets of indirect branches and function returns',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mbranches-within-32B-boundaries',
          description:
              'Align selected branches (fused, jcc, jmp) within 32-byte boundary'),
      Option(
          name: '-mcmodel',
          description:
              'Equivalent to -mcmodel=medium, compatible with RISC-V gcc',
          args: [Arg(name: 'edan', description: 'Edan')]),
      Option(
          name: '-mcmse',
          description: 'Allow use of CMSE (Armv8-M Security Extensions)'),
      Option(
          name: '-mcode-object-v3',
          description: 'Enable code object v3 (AMDGPU only)'),
      Option(
          name: '-mcrc',
          description: 'Allow use of CRC instructions (ARM/Mips only)'),
      Option(
          name: '-mcumode',
          description: 'CU wavefront execution mode is used (AMDGPU only)'),
      Option(
          name: '-mdouble',
          description: 'Force double to be 32 bits or 64 bits',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-MD',
          description: 'Write a depfile containing user and system headers'),
      Option(
          name: '-meabi',
          description:
              'Set EABI type, e.g. 4, 5 or gnu (default depends on triple)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-membedded-data',
          description:
              'Place constants in the .rodata section instead of the .sdata section even if they meet the -G <size> threshold (MIPS)'),
      Option(
          name: '-menable-experimental-extensions',
          description: 'Enable use of experimental RISC-V extensions'),
      Option(
          name: '-mexec-model',
          description: 'Execution model (WebAssembly only)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mexecute-only',
          description:
              'Disallow generation of data access to code sections (ARM only)'),
      Option(
          name: '-mextern-sdata',
          description:
              'Assume that externally defined data is in the small data if it meets the -G <size> threshold (MIPS)'),
      Option(
          name: '-mfentry',
          description:
              'Insert calls to fentry at function entry (x86/SystemZ only)'),
      Option(name: '-mfix-cortex-a53-835769', description: 'Workaround'),
      Option(
          name: '-mfp32',
          description: 'Use 32-bit floating point registers (MIPS only)'),
      Option(
          name: '-mfp64',
          description: 'Use 64-bit floating point registers (MIPS only)'),
      Option(
          name: '-MF',
          description:
              'Write depfile output from -MMD, -MD, -MM, or -M to <file>',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-mgeneral-regs-only',
          description:
              'Generate code which only uses the general purpose registers (AArch64 only)'),
      Option(name: '-mglobal-merge', description: 'Enable merging of globals'),
      Option(
          name: '-mgpopt',
          description:
              'Use GP relative accesses for symbols known to be in a small data section (MIPS)'),
      Option(name: '-MG', description: 'Add missing headers to depfile'),
      Option(
          name: '-mharden-sls',
          description: 'Select straight-line speculation hardening scope',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mhvx-length',
          description: 'Set Hexagon Vector Length',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mhvx',
          description: 'Enable Hexagon Vector eXtensions',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-miamcu', description: 'Use Intel MCU ABI'),
      Option(name: '--migrate', description: 'Run the migrator'),
      Option(
          name: '-mincremental-linker-compatible',
          description:
              '(integrated-as) Emit an object file which can be used with an incremental linker'),
      Option(
          name: '-mindirect-jump',
          description:
              'Change indirect jump instructions to inhibit speculation',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mios-version-min',
          description: 'Set iOS deployment target',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-MJ',
          description: 'Write a compilation database entry per input',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mllvm',
          description:
              'Additional arguments to forward to LLVM\'s option processing',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mlocal-sdata',
          description: 'Extend the -G behaviour to object local data (MIPS)'),
      Option(
          name: '-mlong-calls',
          description:
              'Generate branches with extended addressability, usually via indirect jumps'),
      Option(
          name: '-mlong-double-128',
          description: 'Force long double to be 128 bits'),
      Option(
          name: '-mlong-double-64',
          description: 'Force long double to be 64 bits'),
      Option(
          name: '-mlong-double-80',
          description:
              'Force long double to be 80 bits, padded to 128 bits for storage'),
      Option(
          name: '-mlvi-cfi',
          description:
              'Enable only control-flow mitigations for Load Value Injection (LVI)'),
      Option(
          name: '-mlvi-hardening',
          description: 'Enable all mitigations for Load Value Injection (LVI)'),
      Option(
          name: '-mmacosx-version-min',
          description: 'Set Mac OS X deployment target',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mmadd4',
          description:
              'Enable the generation of 4-operand madd.s, madd.d and related instructions'),
      Option(
          name: '-MMD', description: 'Write a depfile containing user headers'),
      Option(
          name: '-mmemops',
          description: 'Enable generation of memop instructions'),
      Option(
          name: '-mms-bitfields',
          description:
              'Set the default structure layout to be compatible with the Microsoft compiler standard'),
      Option(name: '-mmsa', description: 'Enable MSA ASE (MIPS only)'),
      Option(name: '-mmt', description: 'Enable MT ASE (MIPS only)'),
      Option(
          name: '-MM',
          description:
              'Like -MMD, but also implies -E and writes to stdout by default'),
      Option(
          name: '-mno-abicalls',
          description:
              'Disable SVR4-style position-independent code (Mips only)'),
      Option(
          name: '-mno-code-object-v3',
          description: 'Disable code object v3 (AMDGPU only)'),
      Option(
          name: '-mno-crc',
          description: 'Disallow use of CRC instructions (Mips only)'),
      Option(
          name: '-mno-cumode',
          description: 'WGP wavefront execution mode is used (AMDGPU only)'),
      Option(
          name: '-mno-embedded-data',
          description:
              'Do not place constants in the .rodata section instead of the .sdata if they meet the -G <size> threshold (MIPS)'),
      Option(
          name: '-mno-execute-only',
          description:
              'Allow generation of data access to code sections (ARM only)'),
      Option(
          name: '-mno-extern-sdata',
          description:
              'Do not assume that externally defined data is in the small data if it meets the -G <size> threshold (MIPS)'),
      Option(
          name: '-mno-fix-cortex-a53-835769',
          description:
              'Don\'t workaround Cortex-A53 erratum 835769 (AArch64 only)'),
      Option(
          name: '-mno-global-merge', description: 'Disable merging of globals'),
      Option(
          name: '-mno-gpopt',
          description:
              'Do not use GP relative accesses for symbols known to be in a small data section (MIPS)'),
      Option(
          name: '-mno-hvx', description: 'Disable Hexagon Vector eXtensions'),
      Option(
          name: '-mno-implicit-float',
          description: 'Don\'t generate implicit floating point instructions'),
      Option(
          name: '-mno-incremental-linker-compatible',
          description:
              '(integrated-as) Emit an object file which cannot be used with an incremental linker'),
      Option(
          name: '-mno-local-sdata',
          description:
              'Do not extend the -G behaviour to object local data (MIPS)'),
      Option(
          name: '-mno-long-calls',
          description:
              'Restore the default behaviour of not generating long calls'),
      Option(
          name: '-mno-lvi-cfi',
          description:
              'Disable control-flow mitigations for Load Value Injection (LVI)'),
      Option(
          name: '-mno-lvi-hardening',
          description: 'Disable mitigations for Load Value Injection (LVI)'),
      Option(
          name: '-mno-madd4',
          description:
              'Disable the generation of 4-operand madd.s, madd.d and related instructions'),
      Option(
          name: '-mno-memops',
          description: 'Disable generation of memop instructions'),
      Option(
          name: '-mno-movt',
          description: 'Disallow use of movt/movw pairs (ARM only)'),
      Option(
          name: '-mno-ms-bitfields',
          description:
              'Do not set the default structure layout to be compatible with the Microsoft compiler standard'),
      Option(name: '-mno-msa', description: 'Disable MSA ASE (MIPS only)'),
      Option(name: '-mno-mt', description: 'Disable MT ASE (MIPS only)'),
      Option(
          name: '-mno-neg-immediates',
          description:
              'Disallow converting instructions with negative immediates to their negation or inversion'),
      Option(
          name: '-mno-nvj',
          description: 'Disable generation of new-value jumps'),
      Option(
          name: '-mno-nvs',
          description: 'Disable generation of new-value stores'),
      Option(
          name: '-mno-outline',
          description: 'Disable function outlining (AArch64 only)'),
      Option(
          name: '-mno-packets',
          description: 'Disable generation of instruction packets'),
      Option(name: '-mno-relax', description: 'Disable linker relaxation'),
      Option(
          name: '-mno-restrict-it',
          description:
              'Allow generation of deprecated IT blocks for ARMv8. It is off by default for ARMv8 Thumb mode'),
      Option(
          name: '-mno-save-restore',
          description: 'Disable using library calls for save and restore'),
      Option(
          name: '-mno-seses',
          description:
              'Disable speculative execution side effect suppression (SESES)'),
      Option(
          name: '-mno-sram-ecc', description: 'Disable SRAM ECC (AMDGPU only)'),
      Option(
          name: '-mno-stack-arg-probe',
          description: 'Disable stack probes which are enabled by default'),
      Option(
          name: '-mno-tls-direct-seg-refs',
          description: 'Disable direct TLS access through segment registers'),
      Option(
          name: '-mno-unaligned-access',
          description:
              'Force all memory accesses to be aligned (AArch32/AArch64 only)'),
      Option(
          name: '-mno-wavefrontsize64',
          description: 'Wavefront size 32 is used'),
      Option(name: '-mno-xnack', description: 'Disable XNACK (AMDGPU only)'),
      Option(
          name: '-mnocrc',
          description: 'Disallow use of CRC instructions (ARM only)'),
      Option(
          name: '-mnop-mcount',
          description:
              'Generate mcount/__fentry__ calls as nops. To activate they need to be patched in'),
      Option(
          name: '-mnvj', description: 'Enable generation of new-value jumps'),
      Option(
          name: '-mnvs', description: 'Enable generation of new-value stores'),
      Option(
          name: '-module-dependency-dir',
          description: 'Directory to dump module dependencies to',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-module-file-info',
          description: 'Provide information about a particular module file'),
      Option(
          name: '-momit-leaf-frame-pointer',
          description: 'Omit frame pointer setup for leaf functions'),
      Option(
          name: '-moutline',
          description: 'Enable function outlining (AArch64 only)'),
      Option(
          name: '-mpacked-stack',
          description: 'Use packed stack layout (SystemZ only)'),
      Option(
          name: '-mpackets',
          description: 'Enable generation of instruction packets'),
      Option(
          name: '-mpad-max-prefix-size',
          description: 'Specify maximum number of prefixes to use for padding',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mpie-copy-relocations',
          description: 'Use copy relocations support for PIE builds'),
      Option(
          name: '-mprefer-vector-width',
          description:
              'Specifies preferred vector width for auto-vectorization. Defaults to \'none\' which allows target specific decisions',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-MP',
          description:
              'Create phony target for each dependency (other than main file)'),
      Option(
          name: '-mqdsp6-compat',
          description: 'Enable hexagon-qdsp6 backward compatibility'),
      Option(
          name: '-MQ',
          description: 'Specify name of main file output to quote in depfile',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mrecord-mcount',
          description:
              'Generate a __mcount_loc section entry for each __fentry__ call'),
      Option(
          name: '-mrelax-all',
          description: '(integrated-as) Relax all machine instructions'),
      Option(name: '-mrelax', description: 'Enable linker relaxation'),
      Option(
          name: '-mrestrict-it',
          description:
              'Disallow generation of deprecated IT blocks for ARMv8. It is on by default for ARMv8 Thumb mode'),
      Option(
          name: '-mrtd',
          description: 'Make StdCall calling convention the default'),
      Option(
          name: '-msave-restore',
          description: 'Enable using library calls for save and restore'),
      Option(
          name: '-mseses',
          description:
              'Enable speculative execution side effect suppression (SESES). Includes LVI control flow integrity mitigations'),
      Option(
          name: '-msign-return-address',
          description: 'Select return address signing scope',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-msmall-data-limit',
          description:
              'Put global and static data smaller than the limit into a special section',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-msoft-float', description: 'Use software floating point'),
      Option(name: '-msram-ecc', description: 'Enable SRAM ECC (AMDGPU only)'),
      Option(
          name: '-mstack-alignment',
          description: 'Set the stack alignment',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-mstack-arg-probe', description: 'Enable stack probes'),
      Option(
          name: '-mstack-probe-size',
          description: 'Set the stack probe size',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mstackrealign',
          description: 'Force realign the stack at entry to every function'),
      Option(
          name: '-msvr4-struct-return',
          description: 'Return small structs in registers (PPC32 only)'),
      Option(
          name: '-mthread-model',
          description:
              'The thread model to use, e.g. posix, single (posix by default)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mtls-direct-seg-refs',
          description:
              'Enable direct TLS access through segment registers (default)'),
      Option(
          name: '-mtls-size',
          description:
              'Specify bit size of immediate TLS offsets (AArch64 ELF only): 12 (for 4KB) | 24 (for 16MB, default) | 32 (for 4GB) | 48 (for 256TB, needs -mcmodel=large)',
          args: [
            Arg(name: 'value', description: 'Value', suggestions: [
              FigSuggestion(name: '12'),
              FigSuggestion(name: '24'),
              FigSuggestion(name: '32'),
              FigSuggestion(name: '48')
            ])
          ]),
      Option(
          name: '-mtp',
          description: 'Thread pointer access method (AArch32/AArch64 only)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-mtune',
          description:
              'Accepted for compatibility with GCC. Currently has no effect',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-MT',
          description: 'Specify name of main file output in depfile',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-munaligned-access',
          description:
              'Allow memory accesses to be unaligned (AArch32/AArch64 only)'),
      Option(name: '-MV', description: 'Use NMake/Jom format for the depfile'),
      Option(
          name: '-mwavefrontsize64', description: 'Wavefront size 64 is used'),
      Option(name: '-mxnack', description: 'Enable XNACK (AMDGPU only)'),
      Option(
          name: '-M',
          description:
              'Like -MD, but also implies -E and writes to stdout by default'),
      Option(
          name: '--no-cuda-include-ptx',
          description:
              'Do not include PTX for the following GPU architecture (e.g. sm_35) or \'all\'. May be specified more than once',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '--no-cuda-version-check', description: 'Don\'t'),
      Option(
          name: '--no-offload-arch',
          description:
              'Remove CUDA/HIP offloading device architecture (e.g. sm_35, gfx906) from the list of devices to compile for. \'all\' resets the list to its default value',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--no-system-header-prefix',
          description:
              'Treat all #include paths starting with <prefix> as not including a system header',
          args: [Arg(name: 'prefix', description: 'Prefix')]),
      Option(
          name: '-nobuiltininc',
          description: 'Disable builtin #include directories'),
      Option(
          name: '-nogpulib',
          description:
              'Do not link device library for CUDA/HIP device compilation'),
      Option(
          name: '-nostdinc++',
          description:
              'Disable standard #include directories for the C++ standard library'),
      Option(
          name: '-ObjC++',
          description: 'Treat source input files as Objective-C++ inputs'),
      Option(name: '-objcmt-atomic-property', description: 'Make'),
      Option(
          name: '-objcmt-migrate-all',
          description: 'Enable migration to modern ObjC'),
      Option(
          name: '-objcmt-migrate-annotation',
          description: 'Enable migration to property and method annotations'),
      Option(
          name: '-objcmt-migrate-designated-init',
          description:
              'Enable migration to infer NS_DESIGNATED_INITIALIZER for initializer methods'),
      Option(
          name: '-objcmt-migrate-instancetype',
          description:
              'Enable migration to infer instancetype for method result type'),
      Option(
          name: '-objcmt-migrate-literals',
          description: 'Enable migration to modern ObjC literals'),
      Option(
          name: '-objcmt-migrate-ns-macros',
          description: 'Enable migration to NS_ENUM/NS_OPTIONS macros'),
      Option(
          name: '-objcmt-migrate-property-dot-syntax',
          description:
              'Enable migration of setter/getter messages to property-dot syntax'),
      Option(
          name: '-objcmt-migrate-property',
          description: 'Enable migration to modern ObjC property'),
      Option(
          name: '-objcmt-migrate-protocol-conformance',
          description:
              'Enable migration to add protocol conformance on classes'),
      Option(
          name: '-objcmt-migrate-readonly-property',
          description: 'Enable migration to modern ObjC readonly property'),
      Option(
          name: '-objcmt-migrate-readwrite-property',
          description: 'Enable migration to modern ObjC readwrite property'),
      Option(
          name: '-objcmt-migrate-subscripting',
          description: 'Enable migration to modern ObjC subscripting'),
      Option(
          name: '-objcmt-ns-nonatomic-iosonly',
          description:
              'Enable migration to use NS_NONATOMIC_IOSONLY macro for setting property\'s \'atomic\' attribute'),
      Option(
          name: '-objcmt-returns-innerpointer-property',
          description:
              'Enable migration to annotate property with NS_RETURNS_INNER_POINTER'),
      Option(
          name: '-objcmt-whitelist-dir-path',
          description:
              'Only modify files with a filename contained in the provided directory path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-ObjC',
          description: 'Treat source input files as Objective-C inputs'),
      Option(name: '-o', description: 'Write output to <file>', args: [
        Arg(name: 'file', description: 'File', template: 'filepaths')
      ]),
      Option(name: '-pg', description: 'Enable mcount instrumentation'),
      Option(
          name: '-pipe',
          description: 'Use pipes between commands, when possible'),
      Option(name: '--precompile', description: 'Only precompile the input'),
      Option(name: '-print-effective-triple', description: 'Print'),
      Option(
          name: '-print-file-name',
          description: 'Print the full library path',
          args: [
            Arg(name: 'file', description: 'File', template: 'filepaths')
          ]),
      Option(
          name: '-print-ivar-layout',
          description: 'Enable Objective-C Ivar layout bitmap print trace'),
      Option(name: '-print-libgcc-file-name', description: 'Print'),
      Option(
          name: '-print-prog-name',
          description: 'Print the full program path of <name>',
          args: [Arg(name: 'name', description: 'Name')]),
      Option(
          name: '-print-resource-dir',
          description: 'Print the resource directory pathname'),
      Option(
          name: '-print-search-dirs',
          description:
              'Print the paths used for finding libraries and programs'),
      Option(
          name: '-print-supported-cpus',
          description:
              'Print supported cpu models for the given target (if target is not specified, it will print the supported cpus for the default target)'),
      Option(
          name: '-print-target-triple',
          description: 'Print the normalized target triple'),
      Option(
          name: '-print-targets', description: 'Print the registered targets'),
      Option(
          name: '-pthread',
          description: 'Support POSIX threads in generated code'),
      Option(
          name: '--ptxas-path',
          description: 'Path to ptxas (used for compiling CUDA code)',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-P', description: 'Disable linemarker output in -E mode'),
      Option(
          name: '-Qn',
          description:
              'Do not emit metadata containing compiler name and version'),
      Option(
          name: '-Qunused-arguments',
          description: 'Don\'t emit warning for unused driver arguments'),
      Option(
          name: '-Qy',
          description: 'Emit metadata containing compiler name and version'),
      Option(
          name: '-relocatable-pch',
          description: 'Whether to build a relocatable precompiled header'),
      Option(
          name: '-rewrite-legacy-objc',
          description: 'Rewrite Legacy Objective-C source to C++'),
      Option(
          name: '-rewrite-objc',
          description: 'Rewrite Objective-C source to C++'),
      Option(
          name: '--rocm-device-lib-path',
          description: 'ROCm device library path. Alternative to rocm-path',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--rocm-path',
          description:
              'ROCm installation path, used for finding and automatically linking required bitcode libraries',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-Rpass-analysis',
          description:
              'Report transformation analysis from optimization passes whose name matches the given POSIX regular expression',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-Rpass-missed',
          description:
              'Report missed transformations by optimization passes whose name matches the given POSIX regular expression',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-Rpass',
          description:
              'Report transformations performed by optimization passes whose name matches the given POSIX regular expression',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-rtlib',
          description: 'Compiler runtime library to use',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-R',
          description: 'Enable the specified remark',
          args: [Arg(name: 'remark', description: 'Remar')]),
      Option(
          name: '-save-stats',
          description: 'Save llvm statistics',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-save-temps',
          description: 'Save intermediate compilation results',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-serialize-diagnostics',
          description: 'Serialize compiler diagnostics to a file',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-shared-libsan',
          description: 'Dynamically link the sanitizer runtime'),
      Option(
          name: '-static-libsan',
          description: 'Statically link the sanitizer runtime'),
      Option(
          name: '-static-openmp',
          description: 'Use the static host OpenMP runtime while linking'),
      Option(
          name: '-stdlib++-isystem',
          description: 'Use directory as the C++ standard library include path',
          args: [
            Arg(
                name: 'directory',
                description: 'Directory',
                template: 'folders')
          ]),
      Option(
          name: '-stdlib',
          description: 'C++ standard library to use',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-sycl-std',
          description: 'SYCL language standard to compile for',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--system-header-prefix',
          description:
              'Treat all #include paths starting with <prefix> as including a system header',
          args: [Arg(name: 'prefix', description: 'Prefix')]),
      Option(
          name: '-S', description: 'Only run preprocess and compilation steps'),
      Option(
          name: '-target-variant',
          description:
              'Generate code that may run on a particular variant of the deployment target',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '--target',
          description: 'Generate code for the given target',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-Tbss',
          description: 'Set starting address of BSS to <addr>',
          args: [Arg(name: 'addr', description: 'Add')]),
      Option(
          name: '-Tdata',
          description: 'Set starting address of DATA to <addr>',
          args: [Arg(name: 'addr', description: 'Add')]),
      Option(name: '-time', description: 'Time individual commands'),
      Option(
          name: '-traditional-cpp',
          description: 'Enable some traditional CPP emulation'),
      Option(name: '-trigraphs', description: 'Process trigraph sequences'),
      Option(
          name: '-Ttext',
          description: 'Set starting address of TEXT to <addr>',
          args: [Arg(name: 'addr', description: 'Add')]),
      Option(
          name: '-T',
          description: 'Specify <script> as linker script',
          args: [Arg(name: 'script', description: 'Scrip')]),
      Option(name: '-undef', description: 'Undef all system defines'),
      Option(
          name: '-unwindlib',
          description: 'Unwind library to use',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(
          name: '-U',
          description: 'Undefine macro <macro>',
          args: [Arg(name: 'macro', description: 'Macr')]),
      Option(
          name: '--verify-debug-info',
          description: 'Verify the binary representation of debug output'),
      Option(
          name: '-verify-pch',
          description:
              'Load and verify that a pre-compiled header file is not stale'),
      Option(name: '--version', description: 'Print version information'),
      Option(
          name: '-v',
          description: 'Show commands to run and use verbose output'),
      Option(
          name: '-Wdeprecated',
          description:
              'Enable warnings for deprecated constructs and define __DEPRECATED'),
      Option(
          name: '-working-directory',
          description: 'Resolve file paths relative to the specified directory',
          args: [Arg(name: 'value', description: 'Value')]),
      Option(name: '-w', description: 'Suppress all warnings'),
      Option(
          name: '-Xanalyzer',
          description: 'Pass <arg> to the static analyzer',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xarch_device',
          description: 'Pass <arg> to the CUDA/HIP device compilation',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xarch_host',
          description: 'Pass <arg> to the CUDA/HIP host compilation',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xassembler',
          description: 'Pass <arg> to the assembler',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xclang',
          description: 'Pass <arg> to the clang compiler',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xcuda-fatbinary',
          description: 'Pass <arg> to fatbinary invocation',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xcuda-ptxas',
          description: 'Pass <arg> to the ptxas assembler',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xlinker',
          description: 'Pass <arg> to the linker',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-Xopenmp-target',
          description:
              'Pass <arg> to the target offloading toolchain identified by <triple>',
          args: [Arg(name: 'triple', description: 'Triple')]),
      Option(
          name: '-Xpreprocessor',
          description: 'Pass <arg> to the preprocessor',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-x',
          description: 'Treat subsequent input files as having type <language>',
          args: [Arg(name: 'language', description: 'Language')]),
      Option(
          name: '-z',
          description: 'Pass -z <arg> to the linker',
          args: [Arg(name: 'arg', description: 'Arg')]),
      Option(
          name: '-std',
          description: 'Language standard to compile for',
          args: [
            Arg(
                name: 'value',
                suggestions: [...stdCSuggestions, ...stdCPPSuggestions])
          ],
          requiresSeparator: true),
    ]);
