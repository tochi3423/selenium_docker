from selenium import webdriver
import time

options = webdriver.ChromeOptions()
options.add_argument('--headless')

driver = webdriver.Remote(
    command_executor='http://localhost:4444/wd/hub',
    desired_capabilities=options.to_capabilities(),
    options=options,
)

driver.get('https://www.yahoo.co.jp/')
time.sleep(1)
print(driver.title)

driver.quit()