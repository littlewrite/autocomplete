const bucketGenerator: Fig.Generator = {
  script: ["tool", "list"],
  postProcess: (out) =>
    JSON.parse(out).items.map((item) => ({ name: item.name })),
};

const completionSpec: Fig.Spec = {
  name: "shared-generator-fixture",
  subcommands: [
    { name: "one", args: { generators: bucketGenerator } },
    { name: "two", args: { generators: bucketGenerator } },
  ],
};

export default completionSpec;
