const fs = require('fs');
const path = require('path');

const mixPath = path.join(process.cwd(), 'src/mix.ts');
const outputPath = path.join(process.cwd(), 'dart/assets/icons/elixir.jpeg');

try {
  const content = fs.readFileSync(mixPath, 'utf8');
  // Match the base64 string
  // Looking for: elixir_logo_url:\s*"data:image/jpeg;base64,(...)"
  const regex = /elixir_logo_url:\s*"data:image\/jpeg;base64,([^"]+)"/;
  const match = content.match(regex);

  if (match && match[1]) {
    const base64Data = match[1];
    const buffer = Buffer.from(base64Data, 'base64');
    fs.writeFileSync(outputPath, buffer);
    console.log(`Successfully extracted icon to ${outputPath}`);
  } else {
    console.error('Could not find elixir_logo_url with base64 data in mix.ts');
    process.exit(1);
  }
} catch (err) {
  console.error('Error processing file:', err);
  process.exit(1);
}
