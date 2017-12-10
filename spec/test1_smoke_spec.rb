require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/user/header_menu_component.rb'
require_relative '../pages/application.rb'

describe "open_card" do

  context "Given array of item names" do

    it "Return the same array if all elemente were successfully found" do

      @menu_items_array = ["Desktops", "Laptops & Notebooks", "Components", "Tablets", "Software", "Phones & PDAs", "Cameras", "MP3 Players"]
      expect(Application.get.load_header_menu_component.menu_check_items(@menu_items_array)).to eql(@menu_items_array)

      sleep 3

    end

  end

end