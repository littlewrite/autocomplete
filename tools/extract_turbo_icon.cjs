const fs = require('fs');
const path = require('path');

const tsFilePath = path.join(process.cwd(), 'src/turbo.ts');
const iconPath = path.join(process.cwd(), 'dart/assets/icons/turbo.png');

try {
  const content = fs.readFileSync(tsFilePath, 'utf8');
  // Match the turboIcon variable definition
  // It looks like: const turboIcon =\n  "data:image/png;base64,...";
  const match = content.match(/const turboIcon\s*=\s*"([^"]+)"/);
  
  if (match && match[1]) {
    const dataUrl = match[1];
    const base64Data = dataUrl.replace(/^data:image\/png;base64,/, "");
    
    fs.writeFileSync(iconPath, Buffer.from(base64Data, 'base64'));
    console.log(`Successfully extracted icon to ${iconPath}`);
  } else {
    console.error('Could not find turboIcon in src/turbo.ts');
    process.exit(1);
  }
} catch (error) {
  console.error('Error extracting icon:', error);
  process.exit(1);
}
