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
 
  def test_menu
      desktop = ['Desktops', 'Laptops & Notebooks', 'Components', 'Tablets', 'Software', 'Phones & PDAs', 'Cameras', 'MP3 Players']
      desktop.each{ |e| assert(@driver.find_element(:link, e).text.include?(e),"Assertion Failed")}
  end

end