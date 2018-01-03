require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative 'spec_helper.rb'

describe "open_cart" do
  $data_provider_smoke_test.each do |count|
    context "given home_page" do
      it "add  to cart" do
        expect(Application.get.load_home_page
                   .check_cart.get_message).to eql(count)
      end
    end
  end

end