require_relative "setup"
require "selenium-webdriver"
require "test/unit"

class VefiryItemsCount < Test::Unit::TestCase
    # def setup
    #   Selenium::WebDriver::Chrome.driver_path="C:/chromedriver_win32/chromedriver.exe"
    #   @driver = Selenium::WebDriver.for :chrome
    #   @driver.get "http://oppencart.herokuapp.com/"
    #   @driver.manage.window.maximize
    # end

    Setup.setup

    def teardown
    	@driver.quit
    end

    def test_vefiryItemsCount
    	@driver.find_element(:link, "Desktops").click
      	@driver.find_element(:link, "Show All Desktops").click
      	@driver.find_element(:xpath, "//aside[@id='column-left']/div/a[contains(text(), 'Laptops')]").click
      	k = Array(@driver.find_elements(:xpath, "//div[@class='caption']/h4/a"))
      	res = k.length
      	assert(@driver.find_element(:xpath, "//aside[@id='column-left']/div/a[contains(text(), 'Laptops & Notebooks (#{res})')]"),"Assertion Failed")
        sleep 2
    end

end