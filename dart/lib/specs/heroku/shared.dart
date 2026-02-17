// AI-generated from TypeScript source: shared.ts

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final getAppGenerator = FigGenerator(
  script: ["heroku", "apps", "--all", "--json"],
  cache: FigCache(
    strategy: "stale-while-revalidate",
  ),
  scriptTimeout: 15000,
  postProcess: (String out, [List<String>? tokens]) {
    try {
      final List apps = jsonDecode(out);
      return apps.map((app) {
        return FigSuggestion(
          name: app['name'],
          description: app['name'],
          icon: "https://www.herokucdn.com/favicon.ico",
        );
      }).toList();
    } catch (e) {
      return [];
    }
  },
);
