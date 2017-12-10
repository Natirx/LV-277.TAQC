require_relative "../../data/header_menu/header_menu_repository.rb"

class HeaderMenuComponent

  def initialize(driver)
    @driver = driver
  end

  def menu_subitem_path(menu_subitem_name)
    {:xpath => "//li/div/div/ul/li/a[contains(text(), '#{menu_subitem_name}')]"}
  end

  def menu_item_path(item_name)
    HeaderMenuRepository.menu_item_path(item_name)
  end

  def menu_check_item(menu_item)
    @result = " "
    HeaderMenuRepository.menu_all_items.each do |value|
      if menu_item.eql?(value.get_item_name)
        @result = value.get_item_name
      end
    end
    @result
  end

  def menu_check_items(menu_items_array)
    @menu_exist_items = []
    menu_items_array.each do |menu_item_name|
      @result = menu_check_item(menu_item_name)
      @menu_exist_items.push(@result)
    end
    @menu_exist_items
  end

  def menu_item_click(menu_item_name)
    @menu_item_path = menu_item_path(menu_item_name)
    @driver.find_element(@menu_item_path).click
  end

  def menu_subitem_click(menu_item_name, menu_subitem_name)
    @menu_item_path = menu_item_path(menu_item_name)
    @menu_subitem_path = menu_subitem_path(menu_subitem_name)
    @driver.find_element(@menu_item_path).click
    @driver.find_element(@menu_subitem_path).click
  end

end