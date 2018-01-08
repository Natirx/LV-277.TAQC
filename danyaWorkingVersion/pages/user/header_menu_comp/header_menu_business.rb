require_relative "../../../data/header_menu/header_menu_repository.rb"

class HeaderMenuBusiness

  def self.menu_check_item(menu_item)
    @result = " "
    HeaderMenuRepository.menu_all_items.each do |value|
      if menu_item.eql?(value.get_item_name)
        @result = value.get_item_name
      end
    end
    @result
  end

end