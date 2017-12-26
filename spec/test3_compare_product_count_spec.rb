require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/user/header_menu_component.rb'
require_relative '../pages/user/left_bar_component.rb'
require_relative '../pages/user/product_page.rb'
require_relative '../pages/application.rb'

COMPONENTS = "Components"
MONITORS = "Monitors"

describe "open_card" do

  context "Given left bar paragraph in which is count of products" do

    it "Return actual count of products in this left bar paragraph" do

      @actual_product_count

      Application.get.load_header_menu_component.menu_subitem_click(COMPONENTS, MONITORS)
      @product_count = Application.get.load_left_bar_component.get_number_of_product_count
      if Application.get.load_left_bar_component.compare_product_number(@product_count)
        @actual_product_count = @product_count
      end
      expect(@actual_product_count).to eql(@product_count)

    end

  end

end