require 'rubygems'
require 'selenium-webdriver'
require "test/unit"
require_relative '../pages/user/main_page.rb'

class OppenCart < Test::Unit::TestCase
  
  def ptest_oppen_cart
    puts "start test ..."
    #
    # precondition
    #
    puts "start server"
    #Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    Selenium::WebDriver::Firefox.driver_path="lib/geckodriver.exe"
    puts "start webdriver"
    #driver = Selenium::WebDriver.for :chrome
    driver = Selenium::WebDriver.for :firefox
    #
    puts "init timeOut"
    driver.manage.timeouts.implicit_wait = 10 # seconds

    puts "get url"
    driver.get "http://oppencart.herokuapp.com/"
    # driver.navigate.to "http://oppencart.herokuapp.com/"

    # do not use!
    sleep 2
    #
    # steps
    #
    puts "choose USD ..."
    # Bad Solution
    #currency = driver.find_element(:css, ".btn.btn-link.dropdown-toggle")
    #currency.click
    # do not use local variable!!!
    driver.find_element(:css, ".btn.btn-link.dropdown-toggle").click
    driver.find_element(:name, "USD").click
    sleep 1
    #
    ##puts "choose EURO ..."
    ##currency = driver.find_element(:css, ".btn.btn-link.dropdown-toggle")
    ##currency.click
    ##driver.find_element(:css, ".btn.btn-link.dropdown-toggle").click
    ##driver.find_element(:name, "EUR").click
    sleep 1
    #
    puts "choose MacBook ..."
    macbook = driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='MacBook']/../..")
    sleep 1
    #
    price = macbook.find_element(:xpath, "./p[@class='price']").text
    #
    puts "price = " + price
    sleep 1
    #
    # check
    #
    assert_equal "$602.00", price[0,7]
    #
    # return to previous state
    #
    puts "done"
    driver.quit
  end

  def test_oppen_cart_page_obj1
    # precondition
    Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    driver = Selenium::WebDriver.for :chrome
    driver.manage.timeouts.implicit_wait = 10
    driver.get "http://oppencart.herokuapp.com/"
    #
    # steps
    actual = MainPage.new(driver) \
            .choose_currency_dollar \
            .price_macbook_product_text_withot_tax
    #
    # check
    assert_equal "$602.00", actual
    #
    # return to previous state
    driver.quit
  end
    
end

# Test BAD. Mixed
# Logic of Test;
# Using engine Selenium
# Selectors
# Test Data
#
# Must be
# Application.start.gotoMainPage.choose(Dollar)
# Check price MainPage.getPrice(MacBook)

