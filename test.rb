require 'selenium-webdriver'

# docker run -d -p 4444:4444 selenium/standalone-chrome
# 4444ポートで起動 外部からアクセスできるように指定

driver = Selenium::WebDriver.for :remote, url: "http://localhost:4444/wd/hub", desired_capabilities: :chrome
driver.navigate.to "https://www.yahoo.co.jp/"
sleep 1
puts driver.title
driver.quit