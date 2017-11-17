require "selenium-webdriver"
require "test/unit"
 
class LoginClass < Test::Unit::TestCase
 
  def setup
      Selenium::WebDriver::Chrome.driver_path="C:/chromedriver_win32/chromedriver.exe"
      @driver = Selenium::WebDriver.for :chrome
      @driver.get "http://oppencart.herokuapp.com/"
      @driver.manage.window.maximize  
  end
 
  def teardown
      @driver.quit
  end

  def test_isenabled
      @driver.find_element(:link, "Components").click
      assert(@driver.find_element(:link, "Monitors (2)").enabled?, "Assertion Failed")
  end

end