require 'rubygems'
require 'selenium-webdriver'
require_relative '../../pages/application.rb'

#Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
#driver = Selenium::WebDriver.for :chrome
#driver.manage.timeouts.implicit_wait = 10
Application.get(ApplicationSourceRepository.chrome_heroku)
home_page = nil
currency_object = nil

Given(/^We navigate to the homepage$/) do
  #driver.navigate.to "http://atqc-shop.epizy.com/"
  home_page = Application.get.load_home_page
end

When(/^We choose "(.*)"$/) do |currency|
  #driver.find_element(:name, 'search').send_keys("mac")
  #driver.find_element(:css, '.btn.btn-default.btn-lg').click
  currency_object = Currency.new  currency, currency
  home_page.choose_currency_by_item(currency_object)
end

Then(/^The results for new product price will be displayed$/) do
  begin
    #element = driver.find_element(:xpath => "//h4/a[contains(@href,'product_id=41&search=mac')]")
    #expect(element.text).to eq('iMac')
    expect(home_page.price_macbook_product_text_withot_tax).to eql(product.prices_by_currency_item(currency_object))
  ensure
    Application.remove
  end
end

# Running
# cucumber features/search.features
