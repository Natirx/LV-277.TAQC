require 'selenium/webdriver'
require_relative 'header_component_selectors.rb'


class HeaderMenuComponent
  attr_reader :driver


  def initialize(driver)
    @driver = driver
  end


  def navigation_panel
    @driver.find_element (HeaderComponentSelectors::NAVIGATION_PANEL)
  end

  def desktop
    @driver.find_element (HeaderComponentSelectors::DESKTOP)
  end


  def mac
    @driver.find_element (HeaderComponentSelectors::MAC)
  end

  def pc
    @driver.find_element (HeaderComponentSelectors::PC)
  end


end
