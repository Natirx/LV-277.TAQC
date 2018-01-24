require 'rubygems'
require 'selenium-webdriver'

require_relative '../../data/header_menu/header_menu_repository.rb'
require_relative '../../data/product_repository.rb'
require_relative '../../pages/application.rb'

Given(/^We navigate to the homepage$/) do
  Application.get.load_url
end

When(/^We search for the word agile$/) do

  @hrm = HeaderMenuRepository
  $product_name = Application.get.load_header_menu_business
            .make_menu_subitem_click(@hrm.item_path, @hrm.subitem_path)
            .verify_product_existing(ProductRepository.apple)

end

Then(/^The results for the search will be displayed$/) do
  begin
    expect($product_name).to eq(true)
  end
end