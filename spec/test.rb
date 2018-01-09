=begin
require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'allure-rspec'
require 'pathname'
require_relative '../pages/application.rb'
require_relative '../data/product_repository.rb'
require_relative 'spec_helper.rb'
require_relative '../tools/price_utils'

describe "Products from HOME page" do
  context "should be added to the cart" do
    it "and had right sub total" do
      $log.info "Add product to cart Test Started"
     # p $data_provider_total_price
      #puts ProductRepository.mackbook_data
      #a=ProductRepository.price($test2)
      #puts PriceUtils.get_price($data_provider_total_price)
      expect(Application.get.load_home_page
                 .add_all_product_to_cart($data_provider_test_1).get_total).to eql($data_provider_total_price)
      $log.info "Add product to cart Test Finished"
    end
  end

end

describe "Products from HOME page" do
  context "should be added to the cart and" do
    it " their names should be right" do
      $log.info "Add product to cart and check names Test Started"
      #puts ProductRepository.mackbook_data
      expect(Application.get.load_home_page
                 .add_all_product_to_cart($data_provider_test_1)
                 .get_all_product_names($data_provider_test_1)).to eql($data_provider_test_1)
      $log.info "Add product to cart and check names Test Finished"
    end
  end

end
=end