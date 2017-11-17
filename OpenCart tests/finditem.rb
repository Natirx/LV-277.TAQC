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
 
  def test_finditem
      @driver.find_element(:link, "Desktops").click
      @driver.find_element(:link, "Mac (1)").click
      assert(@driver.find_element(:link, 'iMac').text.include?('iMac'),"Assertion Failed")
  end

end