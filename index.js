const { resolve } = require('path');
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({ args: ['--no-sandbox'] });
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({
    path: resolve(__dirname, 'screenshots', 'example.png'),
  });
  await browser.close();
})();
