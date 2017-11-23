class BrowserWrapper
  def initialize()
    init_browser()
  end

  # TODO
  def init_browser()
    Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 10
  end

  def driver
    @driver
  end

  def open_url(url)
    #@driver.get url
    @driver.get "http://oppencart.herokuapp.com/"
  end

  def navigate_forward
    @driver.navigate.forward
  end

  def navigate_back
    @driver.navigate.back
  end

  def refresh_page
    @driver.navigate.refresh
  end

  def delete_cookies
    @driver.manage.delete_cookies
  end

  def quit
    unless @driver.nil?
      @driver.quit
      @driver = nil
    end
  end

end
