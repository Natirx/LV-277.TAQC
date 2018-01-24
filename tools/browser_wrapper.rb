require_relative '../data/application_source.rb'

class BrowserWrapper
  def initialize(application_source)
    init_browser(application_source)
  end

  private

  # def init_browser(application_source)
  #   # TODO Use factory method
  #   if application_source.browserName.include?("chrome")
  #     Selenium::WebDriver::Chrome.driver_path = application_source.driverPath
  #     @driver = Selenium::WebDriver.for :chrome
  #     #
  #     # Selenium::WebDriver::Chrome.driver_path = application_source.driverPath
  #     # options = Selenium::WebDriver::Chrome::Options.new
  #     # options.add_argument('--headless')
  #     # options.add_argument('--disable-gpu')
  #     # @driver = Selenium::WebDriver.for :chrome, options: options
  #   end
  #   if application_source.browserName.include?("firefox")
  #     Selenium::WebDriver::Firefox.driver_path = application_source.driverPath
  #     @driver = Selenium::WebDriver.for :firefox
  #   end
  #   # TODO Move to strategy classes
  #   @driver.manage.timeouts.implicit_wait = application_source.implicitWaitTimeOut
  # end

  def init_browser(application_source)
    Selenium::WebDriver::Chrome.driver_path = application_source.driverPath
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    # TODO Use factory method
    @driver = Selenium::WebDriver.for :chrome, options: options
    # TODO Move to strategy classes
    @driver.manage.timeouts.implicit_wait = application_source.implicitWaitTimeOut
    #@driver.manage.window.maximize
  end

  public

  def driver
    @driver
  end

  def open_url(url)
    @driver.get url
    # driver.get "http://oppencart.herokuapp.com/"
  end

  def navigate_forward
    driver.navigate.forward
  end

  def navigate_back
    driver.navigate.back
  end

  def refresh_page
    driver.navigate.refresh
  end

  def delete_cookies
    driver.manage.delete_cookies
  end

  def quit
    unless driver.nil?
      driver.quit
      @driver = nil
    end
  end

end
