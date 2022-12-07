# from playwright.sync_api import sync_playwright

# with sync_playwright() as p:
#     browser = p.chromium_launch()
#     page = browser.new_page()
#     page.goto('https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/')
#     page.screenshot('nyc.png')
#     close()

import pip
try:
   from playwright.sync_api import sync_playwright
except:     pip._internal.main(['install', 'playwright'])
# from playwright import...


with sync_playwright() as p:
    browser = p.chromium.launch()
    page = browser.new_page()
    page.goto("http://playwright.dev")
    print(page.title())
    browser.close()