# require_relative 'header_menu_selector.rb'
# require_relative '../header_component.rb'
# require_relative 'header_menu_business.rb'
require_relative '../../application.rb'

class HeaderMenuAtomic

  attr_reader :driver

  def initialize
    @driver = Application.get.browser.driver
  end

  def menu_item_path(menu_item_name)
    {:xpath => "//ul[@class='nav navbar-nav']/li/a[contains(text(), '#{menu_item_name}')]"}
  end

  def menu_subitem_path(menu_subitem_name)
    {:xpath => "//li/div/div/ul/li/a[contains(text(), '#{menu_subitem_name}')]"}
  end

  def get_menu_item_path(item_name)
    menu_item_path(item_name)
  end

  def get_menu_subitem_path(sub_item_name)
    menu_subitem_path(sub_item_name)
  end

  def menu_item_click(menu_item_name)
    @menu_item_path = menu_item_path(menu_item_name)
    @driver.find_element(@menu_item_path).click
  end

  def menu_subitem_click(menu_item_name, menu_subitem_name)
    @menu_item_path = get_menu_item_path(menu_item_name)
    @menu_subitem_path = get_menu_subitem_path(menu_subitem_name)
    @driver.find_element(@menu_item_path).click
    @driver.find_element(@menu_subitem_path).click
  end

end