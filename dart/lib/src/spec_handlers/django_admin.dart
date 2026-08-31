// Hand-written dynamic handlers migrated from src/django-admin.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const djangoAdminHelpSubcommandsHandler =
    'manual.src_django-admin.spec.subcommands_0_.args.suggestions';

const _djangoIcon = 'https://github.com/django.png';

/// The `help` subcommand argument suggests every native django-admin command.
///
/// In the TypeScript source this is a static list derived from the
/// `DJANGO_NATIVE_COMMANDS` array (filtered to exclude `help`, which lives in
/// the spec's own subcommand list rather than that array). Each entry carries
/// the command name, its description, and the Django icon. No subprocess is
/// needed, so [executeCommand] and [context] are unused.
Future<List<FigSuggestion>> _nativeCommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return const [
    FigSuggestion(
      name: 'changepassword',
      description: "Change a user's password for django.contrib.auth",
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'createsuperuser',
      description: 'Used to create a superuser',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'remove_stale_contenttypes',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'check',
      description: 'Checks the entire Django project for potential problems',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'compilemessages',
      description: 'Compiles .po files to .mo files for use with builtin gettext support',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'createcachetable',
      description: 'Creates the tables needed to use the SQL cache backend',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'dbshell',
      description:
          'Runs the command-line client for specified database, or the default database',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'diffsettings',
      description:
          "Displays differences between the current settings.py and Django's default settings",
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'dumpdata',
      description:
          "Output the contents of the database as a fixture of the given format (using each model's default manager unless --all is specified)",
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'flush',
      description:
          'Removes ALL DATA from the database, including data added during migrations',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'inspectdb',
      description:
          'Introspects the database tables in the given database and outputs a Django',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'loaddata',
      description: 'Installs the named fixture(s) in the database',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'makemessages',
      description:
          "Runs over the entire source tree of the current directory and pulls out all strings marked for translation. It creates (or updates) a message file in the conf/locale (in the django tree) or locale (for projects and applications) directory. You must run this command with one of either the --locale, --exclude, or --all options",
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'makemigrations',
      description: 'Creates new migration(s) for apps',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'migrate',
      description:
          'Updates database schema. Manages both apps with migrations and those without',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'sendtestemail',
      description:
          'Sends a test email to the email addresses specified as arguments',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'shell',
      description:
          'Runs a Python interactive interpreter. Tries to use IPython or bpython, if one of them is available. Any standard input is executed as code',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'showmigrations',
      description: 'Shows all available migrations for the current project',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'sqlflush',
      description:
          'Returns a list of the SQL statements required to return all tables in the database to the state they were in just after they were installed',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'sqlmigrate',
      description: 'Prints the SQL statements for the named migration',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'sqlsequencereset',
      description:
          'Prints the SQL statements for resetting sequences for the given app name(s)',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'squashmigrations',
      description:
          'Squashes an existing set of migrations (from first until specified) into a single new one',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'startapp',
      description:
          'Creates a Django app directory structure for the given app name in the current directory or optionally in the given directory',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'startproject',
      description:
          'Creates a Django project directory structure for the given project name in the current directory or optionally in the given directory',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'test',
      description:
          'Discover and run tests in the specified modules or the current directory',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'testserver',
      description: 'Runs a development server with data from the given fixture(s)',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'test_mail',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'clearsessions',
      description:
          'Can be run as a cronjob or directly to clean out expired sessions (only with the database backend at the moment)',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'collectstatic',
      description: 'Collect static files in a single location',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'findstatic',
      description: 'Finds the absolute paths for the given static file(s)',
      icon: _djangoIcon,
    ),
    FigSuggestion(
      name: 'runserver',
      description:
          'Starts a lightweight Web server for development and also serves static files',
      icon: _djangoIcon,
    ),
  ];
}

/// Registers the django-admin handler referenced by the shipped django-admin JSON.
void registerDjangoAdminHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(djangoAdminHelpSubcommandsHandler, _nativeCommands);
}
