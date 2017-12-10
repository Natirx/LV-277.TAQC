require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/user/header_menu_component.rb'
require_relative '../pages/user/product_page.rb'
require_relative '../pages/application.rb'

describe "open_card" do

  context "Given title of the product" do

    it "Return 'Element is found' if element is found" do

      @result
      Application.get.load_header_menu_component.menu_subitem_click("Components", "Monitors")
      if Application.get.load_product_page.verify_product_existing("Apple Cinema 30")
        @result = "Element is found"
      end
      expect(@result).to eql("Element is found")

      sleep 3

    end

  end

end