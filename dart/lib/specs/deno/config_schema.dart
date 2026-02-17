// AI-generated from TypeScript

class DenoConfigurationFileSchema {
  DenoConfigurationFileSchema({
    this.compilerOptions,
    this.importMap,
    this.lint,
    this.fmt,
    this.tasks,
    this.unknown,
  });

  final Map<String, dynamic>? compilerOptions;
  final String? importMap;
  final Map<String, dynamic>? lint;
  final Map<String, dynamic>? fmt;
  final Map<String, String>? tasks;
  final Map<String, dynamic>? unknown;

  factory DenoConfigurationFileSchema.fromJson(Map<String, dynamic> json) {
    return DenoConfigurationFileSchema(
      compilerOptions: json['compilerOptions'] as Map<String, dynamic>?,
      importMap: json['importMap'] as String?,
      lint: json['lint'] as Map<String, dynamic>?,
      fmt: json['fmt'] as Map<String, dynamic>?,
      tasks: (json['tasks'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      unknown: json,
    );
  }
}
