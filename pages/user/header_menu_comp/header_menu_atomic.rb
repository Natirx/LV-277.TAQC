require_relative 'header_menu_selector.rb'
require_relative 'header_menu_business.rb'

class HeaderMenuAtomic

  def initialize(driver)
    @driver = driver
  end

  def menu_check_items(menu_items_array)
    @menu_exist_items = []
    menu_items_array.each do |menu_item_name|
      @result = HeaderMenuBusiness.menu_check_item(menu_item_name)
      @menu_exist_items.push(@result)
    end
    @menu_exist_items
  end

  def menu_item_click(menu_item_name)
    @menu_item_path = menu_item_path(menu_item_name)
    @driver.find_element(@menu_item_path).click
  end

  def menu_subitem_click(menu_item_name, menu_subitem_name)
    @menu_item_path = HeaderMenuSelector.menu_item_path(menu_item_name)
    @menu_subitem_path = HeaderMenuSelector.menu_subitem_path(menu_subitem_name)
    @driver.find_element(@menu_item_path).click
    @driver.find_element(@menu_subitem_path).click
  end

end