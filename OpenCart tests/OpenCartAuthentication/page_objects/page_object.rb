# frozen_string_literal: true

require 'pry'
require 'selenium/webdriver'
require_relative '../utils/web_driver_utils'
require_relative '../utils/config_utils'

class PageObject
  attr_accessor :logger, :web_driver

  def initialize
    @web_driver = WebDriverUtils.get_web_driver
    @logger = ConfigUtils.logger
    @WAIT_WEB_ELEMENT_TIME = 5
  end

  def quit
    @web_driver.quit
  end

  def wait_web_element(_element_info)
    wait = Selenium::WebDriver::Wait.new(timeout: @WAIT_WEB_ELEMENT_TIME)
    begin
      wait.until { @web_driver.find_element(_element_info) }
      return @web_driver.find_element(_element_info)
    rescue Selenium::WebDriver::Error::TimeOutError
      ConfigUtils.logger.warn "Web element #{_element_info.values} was not found"
      return nil
    end
  end
end
