require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative 'spec_helper.rb'

describe "open_cart" do
  $data_provider_currency.each do |product, currency|
    context "given home_page" do
      it "add #{product} to cart" do
        expect(Application.get.load_home_page
                   .choose_currency_by_item(currency)
                   .add_product_to_cart(product))
        #.to eql(product.prices_by_currency_item(currency))
      end
    end
  end
end
