// AI-generated from TypeScript source: trigger_example.ts

/*
import 'package:autocomplete/src/spec.dart';

const _prefixStringForFileAndFolderSuggestions = "file://";

final customArgument = FigArg(
  name: "FILE/FOLDER",
  description: "must start with $_prefixStringForFileAndFolderSuggestions",
  generators: FigGenerator(
    script: (List<String> tokens) {
      final baseLsCommand = ["ls", "-1ApL"];
      // tokens.last is what user typed, but tokens might be empty?
      // In TS: tokens[tokens.length - 1]
      var whatHasUserTyped = tokens.isNotEmpty ? tokens.last : "";

      if (whatHasUserTyped
          .startsWith(_prefixStringForFileAndFolderSuggestions)) {
        whatHasUserTyped = whatHasUserTyped.substring(7);
      } else {
        return ["echo", "file://"];
      }

      // Get the folder path to run ls from based on what user has typed
      var folderPath = "";

      final lastSlashIndex = whatHasUserTyped.lastIndexOf("/");

      if (lastSlashIndex > -1) {
        // User has typed "file://~/abc/def"
        if (whatHasUserTyped.startsWith("~/")) {
          folderPath = whatHasUserTyped.substring(0, lastSlashIndex + 1);
        } else if (whatHasUserTyped.startsWith("/")) {
          // User has typed "file:///" or "file:///abcde"
          if (lastSlashIndex == 0) {
            folderPath = "/";
          }
          // User has typed "file:///abc/def/..."
          else {
            folderPath = whatHasUserTyped.substring(0, lastSlashIndex + 1);
          }
        }
        // User has typed "file://abc/def/..."
        else {
          folderPath = whatHasUserTyped.substring(0, lastSlashIndex + 1);
        }
      }

      return [...baseLsCommand, folderPath];
    },
    postProcess: (String out, [List<String>? tokens]) {
      if (out.trim() == _prefixStringForFileAndFolderSuggestions) {
        return [
          FigSuggestion(
            name: _prefixStringForFileAndFolderSuggestions,
            insertValue: _prefixStringForFileAndFolderSuggestions,
          ),
        ];
      }

      // Sorting function for files and folders. Just alphabetical
      // Sort files and folders by putting non dot files first then "../", then dot files
      final lines = out.split("\n");
      final dotsArr = <String>[];
      final otherArr = <String>[];

      for (final elm in lines) {
        if (elm.isEmpty) continue;
        if (elm.toLowerCase() == ".ds_store") continue;
        if (elm.startsWith(".")) {
          dotsArr.add(elm);
        } else {
          otherArr.add(elm);
        }
      }

      // Helper sort function
      int sortFnStrings(String a, String b) => a.compareTo(b);

      dotsArr.sort(sortFnStrings);
      otherArr.sort(sortFnStrings);

      // I removed "./" from the centre of this array
      final tempArray = [...otherArr, "../", ...dotsArr];

      final finalArray = <FigSuggestion>[];

      // Then loop through them and add them to the final_array depending on the template type
      for (final item in tempArray) {
        if (item.isNotEmpty) {
          final outputType =
              item.endsWith("/") ? SuggestionType.folder : SuggestionType.file;

          // COMMENT THE BELOW IF STATEMENT OUT IF YOU ONLY WANT TO INCLUDE FOLDERS
          // if (outputType == "folder") {
          finalArray.add(FigSuggestion(
            type: outputType,
            name: item,
            insertValue: item,
          ));
          // }
        }
      }

      return finalArray;
    },
    // Function that is called on every keystroke.
    // If it returns true, we will re-generate suggestions by re-running the generator
    // If it doesn't return true, Fig will just filter over the list of suggestions
    trigger: (String newToken, String? oldToken) {
      // If the token doesn't start with prefix string
      if (!newToken.startsWith(_prefixStringForFileAndFolderSuggestions)) {
        // If old token doesn't exist, don't trigger
        if (oldToken == null) return false;

        // If old token does exist and did start with prefix string, retrigger
        if (oldToken.startsWith(_prefixStringForFileAndFolderSuggestions)) {
          return true;
        }
        return false;
      }

      final oldSlash = oldToken?.lastIndexOf("/") ?? -1;
      final newSlash = newToken.lastIndexOf("/");
      return newSlash != oldSlash;
    },
    // Function that is used to determine what part of the user's input to use to filter over all the generated suggestions
    // We use this in cd. e.g if a user types `cd ~/d`, the getQueryTerm function outputs "d" and we use "d" to filter over the list of suggestions
    getQueryTerm: (String token) {
      if (!token.startsWith(_prefixStringForFileAndFolderSuggestions)) {
        return token;
      }
      return token.substring(token.lastIndexOf("/") + 1);
    },
  ),
);

final completionSpec = FigSpec(
  name: "trigger_example",
  description: "",
  subcommands: [
    FigSubcommand(
      name: "test",
      args: customArgument,
    ),
  ],
);
*/
