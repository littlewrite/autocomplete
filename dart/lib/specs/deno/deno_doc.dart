
class DocNode {
  final String kind;
  final String name;
  final String? declarationKind;

  // Specific definitions
  final NamespaceDef? namespaceDef;
  final InterfaceDef? interfaceDef;
  final ClassDef? classDef;
  // Others as dynamic or omitted if not used, but for completeness:
  final dynamic variableDef;
  final dynamic functionDef;
  final dynamic enumDef;
  final dynamic typeAliasDef;
  final dynamic importDef;

  DocNode({
    required this.kind,
    required this.name,
    this.declarationKind,
    this.namespaceDef,
    this.interfaceDef,
    this.classDef,
    this.variableDef,
    this.functionDef,
    this.enumDef,
    this.typeAliasDef,
    this.importDef,
  });

  factory DocNode.fromJson(Map<String, dynamic> json) {
    return DocNode(
      kind: json['kind'] as String,
      name: json['name'] as String,
      declarationKind: json['declarationKind'] as String?,
      namespaceDef: json['namespaceDef'] != null
          ? NamespaceDef.fromJson(json['namespaceDef'])
          : null,
      interfaceDef: json['interfaceDef'] != null
          ? InterfaceDef.fromJson(json['interfaceDef'])
          : null,
      classDef: json['classDef'] != null
          ? ClassDef.fromJson(json['classDef'])
          : null,
      variableDef: json['variableDef'],
      functionDef: json['functionDef'],
      enumDef: json['enumDef'],
      typeAliasDef: json['typeAliasDef'],
      importDef: json['importDef'],
    );
  }
}

class NamespaceDef {
  final List<DocNode> elements;
  NamespaceDef({required this.elements});
  factory NamespaceDef.fromJson(Map<String, dynamic> json) => NamespaceDef(
        elements: (json['elements'] as List)
            .map((e) => DocNode.fromJson(e))
            .toList(),
      );
}

class InterfaceDef {
  final List<InterfaceMethodDef> methods;
  final List<InterfacePropertyDef> properties;
  InterfaceDef({required this.methods, required this.properties});
  factory InterfaceDef.fromJson(Map<String, dynamic> json) => InterfaceDef(
        methods: (json['methods'] as List)
            .map((e) => InterfaceMethodDef.fromJson(e))
            .toList(),
        properties: (json['properties'] as List)
            .map((e) => InterfacePropertyDef.fromJson(e))
            .toList(),
      );
}

class ClassDef {
  final List<ClassMethodDef> methods;
  final List<ClassPropertyDef> properties;
  ClassDef({required this.methods, required this.properties});
  factory ClassDef.fromJson(Map<String, dynamic> json) => ClassDef(
        methods: (json['methods'] as List)
            .map((e) => ClassMethodDef.fromJson(e))
            .toList(),
        properties: (json['properties'] as List)
            .map((e) => ClassPropertyDef.fromJson(e))
            .toList(),
      );
}

class InterfaceMethodDef {
  final String name;
  final String? kind; // "method" | "getter" | "setter"
  InterfaceMethodDef({required this.name, this.kind});
  factory InterfaceMethodDef.fromJson(Map<String, dynamic> json) =>
      InterfaceMethodDef(
        name: json['name'] as String,
        kind: json['kind'] as String?,
      );
}

class InterfacePropertyDef {
  final String name;
  InterfacePropertyDef({required this.name});
  factory InterfacePropertyDef.fromJson(Map<String, dynamic> json) =>
      InterfacePropertyDef(
        name: json['name'] as String,
      );
}

class ClassMethodDef {
  final String name;
  final String? kind;
  final dynamic accessibility; // "public" | "protected" | "private"
  ClassMethodDef({required this.name, this.kind, this.accessibility});
  factory ClassMethodDef.fromJson(Map<String, dynamic> json) => ClassMethodDef(
        name: json['name'] as String,
        kind: json['kind'] as String?,
        accessibility: json['accessibility'],
      );
}

class ClassPropertyDef {
  final String name;
  final dynamic accessibility;
  ClassPropertyDef({required this.name, this.accessibility});
  factory ClassPropertyDef.fromJson(Map<String, dynamic> json) =>
      ClassPropertyDef(
        name: json['name'] as String,
        accessibility: json['accessibility'],
      );
}
