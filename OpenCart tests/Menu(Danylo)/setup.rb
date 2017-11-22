class Setup
	def self.setup
		Selenium::WebDriver::Chrome.driver_path="C:/chromedriver_win32/chromedriver.exe"
		@driver = Selenium::WebDriver.for :chrome
		@driver.get "http://oppencart.herokuapp.com/"
		@driver.manage.window.maximize
	end
end