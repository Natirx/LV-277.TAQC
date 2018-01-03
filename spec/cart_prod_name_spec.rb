require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative 'spec_helper.rb'

describe "open_cart" do
  $data_provider_product_currency.each do |product,a|
    context "given home_page" do
      it "add #{product} to cart" do
        expect(Application.get.load_home_page
                   .add_product_to_cart(product).product_name_text(product)).to eql(product)
      end
    end
  end

end
