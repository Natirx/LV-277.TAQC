require_relative '../data/application_source.rb'
require 'pry'

class BrowserWrapper
  def initialize(application_source)
    init_browser(application_source)
  end

  private

  def init_browser(application_source)
    # TODO Use factory method

    if application_source.browserName.include?("firefox")
      Selenium::WebDriver::Firefox.driver_path = application_source.driverPath
      @driver = Selenium::WebDriver.for :firefox
    end
    # TODO Move to strategy classes
    @driver.manage.timeouts.implicit_wait = application_source.implicitWaitTimeOut
  end

  public

  def driver
    @driver
  end

  def open_url(url)
    @driver.navigate.to url.to_s
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