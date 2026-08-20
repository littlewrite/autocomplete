const completionSpec: Fig.Spec = {
  name: "nohup",
  description: "Run a command immune to hangups",
  options: [{ name: "--", description: "End of options" }],
  args: [
    { name: "utility", isCommand: true, suggestCommands: true },
    { name: "arguments", isVariadic: true, isOptional: true },
  ],
};

export default completionSpec;
