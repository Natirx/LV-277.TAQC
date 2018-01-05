require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/user/header_menu_comp/header_menu_atomic.rb'
require_relative '../pages/application.rb'

MENU_ITEMS_ARRAY = ["Desktops", "Laptops & Notebooks", "Components", "Tablets", "Software", "Phones & PDAs", "Cameras", "MP3 Players"]

describe "open_card" do
  context "Given array of item names" do
    it "Return the same array if all elemente were successfully found" do
      $log.info "Empty Search Test Started"
      expect(Application.get.load_header_menu_component.menu_check_items(MENU_ITEMS_ARRAY)).to eql(MENU_ITEMS_ARRAY)
    end
  end
end