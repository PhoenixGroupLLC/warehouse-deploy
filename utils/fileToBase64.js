'use strict';

const fs = require('fs');
const inputFile = process.argv[2];
const outputFile = process.argv[3];

const help = `
Usage: node fileToBase64.js <input-file-path> [output-file-path]
    input-file-path - mandatory
        The file which content needs to be converted to base64 string.
    output-file-path - optional
        The file which the base64 string will be saved. 
        If the output-file-path is not specified, the output will be printed to stdout.
`;

if (!inputFile) {
    console.log(help);
}

try {
    const base64 = fs.readFileSync(inputFile).toString('base64');
    if (outputFile) {
        fs.writeFileSync(outputFile);
    } else {
        console.info(base64);
    }
} catch (ex) {
    console.error(ex.message);
    process.exit(1);
}