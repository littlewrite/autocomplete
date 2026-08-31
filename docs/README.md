# Documentation Map

This directory is the working contract for the JSON-first migration. Read the
documents in this order when joining the project, including from a new AI
session.

1. [Model Handoff](model-handoff.md): current architecture, decisions,
   repository state, required behaviour, and the next bounded task.
2. [JSON Spec Generation Rules](json-spec-generation-rules.md): the immutable
   JSON schema, asset layout, handler-reference protocol, and release gates.
3. [Handler Porting Workflow](handler-porting-workflow.md): how to locate and
   port one dynamic callback without scanning the whole TypeScript catalog.
4. [Tooling Guide](../tools/README.md): exporter, candidate, targeted-accept,
   materialization, and validation commands.
5. [Dynamic Handler TODO](dynamic-handler-todo.md): generated inventory only;
   it is not implementation priority.
6. [Migration Log](migration-log.md): chronological evidence and decisions.

Do not use the deleted `dart/lib/specs/**` catalog as reference material. The
source of static command data is `src/**`, and the only shipped catalog is
`dart/assets/specs/**`.
