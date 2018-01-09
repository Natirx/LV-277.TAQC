# require 'rspec'
# require 'rubygems'
# require 'selenium-webdriver'
#
# require_relative '../data/application_source_repository.rb'
# require_relative '../data/header_menu/header_menu_repository.rb'
# require_relative '../pages/user/header_menu_component.rb'
# require_relative '../pages/user/product_page.rb'
# require_relative '../pages/application.rb'

RESULT = "Element is found"
COMPONENT = "Components"
MONITORS = "Monitors"
PRODUCT_NAME = "Apple Cinema 30"

describe "Open_card" do

  context "Given title of the product" do

    it "Return 'Element is found' if element is found" do
      expect(Application.get.load_header_menu_component
          .make_menu_subitem_click(COMPONENT, MONITORS)
          .verify_product_existing(PRODUCT_NAME)).to eql(true)
    end

  end

end

