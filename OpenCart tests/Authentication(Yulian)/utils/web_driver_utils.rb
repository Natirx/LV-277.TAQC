# frozen_string_literal: true

require 'pry'
require 'selenium/webdriver'
require_relative 'config_utils'

class WebDriverUtils
  private_class_method :new

  def self.get_web_driver
    return @web_driver unless @web_driver.nil?
    Selenium::WebDriver::Firefox.driver_path = 'src/geckodriver'
    @web_driver = Selenium::WebDriver.for :firefox, marionette: true
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 5
    @web_driver.manage.timeouts.page_load = 10
    @web_driver.manage.timeouts.script_timeout = 5
    @web_driver
  end

  def self.quit
    unless get_web_driver.nil?
      @web_driver.quit
      @web_driver = nil
      ConfigUtils.logger.info 'Web driver quit'
    end
  end
end
