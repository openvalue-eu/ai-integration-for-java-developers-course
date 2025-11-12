import puppeteer from 'puppeteer';
import { promises as fs } from 'fs';
import path from 'path';

// Slice the first two args (runtime + script), and start decomposing the rest
let [htmlFile, pdfFile] = process.argv.slice(2);

let htmlUrl = 'file://' + path.resolve(htmlFile) + '?print-pdf&pdfSeparateFragments=false&showNotes=separate-page';

(async () => {
  const browser = await puppeteer.launch({
    headless: 'new',
    args: ['--no-sandbox'],
  });
  const page = await browser.newPage();
  await page.goto(htmlUrl, {timeout: 90_000});
  await page.waitForXPath('//div[@class="watermark-print"]')
  let pdfBuffer = await page.pdf({
    landscape: true,
    preferCSSPageSize: true,
    format: 'A4',
    printBackground: false,
    timeout: 90_000,
  });
  await fs.writeFile(pdfFile, pdfBuffer);
  await browser.close();
})();
