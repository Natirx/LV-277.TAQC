require 'test/unit'
require 'selenium-webdriver'

class Search < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path = 'C:\Ruby24-x64\chromedriver.exe'
    @web_driver = Selenium::WebDriver.for :chrome #@driver
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 10
  end

  def test_search
    @web_driver.get 'http://oppencart.herokuapp.com/'
    @web_driver.find_element(:css, '#search > input').send_keys('macbook')
    sleep 2
    @web_driver.find_element(:css, "button.btn.btn-default.btn-lg").click
    sleep 2
  end

  def teardown
    @web_driver.quit
  end
end