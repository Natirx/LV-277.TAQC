require_relative "../../../data/header_menu/header_menu_repository.rb"
require_relative "header_menu_atomic.rb"
# require_relative "header_menu_comp.rb"

class HeaderMenuBusiness

  attr_reader :header_menu_atomic

  def initialize()
    @header_menu_atomic = HeaderMenuAtomic.new
  end

  def make_menu_subitem_click(menu_item_name, menu_subitem_name)
    header_menu_atomic.menu_subitem_click(menu_item_name, menu_subitem_name)
    ProductPageBusiness.new
  end

  def menu_check_items(menu_items_array)
    @menu_exist_items = []
    menu_items_array.each do |menu_item_name|
      @result = menu_check_item(menu_item_name)
      @menu_exist_items.push(@result)
    end
    @menu_exist_items
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

end