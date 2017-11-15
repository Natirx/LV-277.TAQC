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
      # desktop = 'Desktops'
      # desktop = ['Desktops', 'Components']
      # for desktop in 0..desktop.length
        # assert(@driver.find_element(:link, desktop).text.include?(desktop),"Assertion Failed")
      # end 
      assert(@driver.find_element(:link, 'Desktops').text.include?('Desktops'),"Assertion Failed")
      assert(@driver.find_element(:link, 'Laptops & Notebooks').text.include?('Laptops & Notebooks'),"Assertion Failed")
      assert(@driver.find_element(:link, 'Components').text.include?('Components'),"Assertion Failed")
      assert(@driver.find_element(:link, 'Tablets').text.include?('Tablets'),"Assertion Failed")
      assert(@driver.find_element(:link, 'Software').text.include?('Software'),"Assertion Failed")
  end

end