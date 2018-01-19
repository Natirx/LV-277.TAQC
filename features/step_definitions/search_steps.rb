require 'rubygems'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10

Given(/^We navigate to the homepage$/) do
  driver.navigate.to "http://atqc-shop.epizy.com/"
end

When(/^We search for the word agile$/) do
  driver.find_element(:name, 'search').send_keys("mac")
  driver.find_element(:css, '.btn.btn-default.btn-lg').click
end

Then(/^The results for the search will be displayed$/) do
  begin
    element = driver.find_element(:xpath => "//h4/a[contains(@href,'product_id=41&search=mac')]")
    expect(element.text).to eq('iMac')
  ensure
    driver.quit
  end
end

# Running
# cucumber features/search.features
