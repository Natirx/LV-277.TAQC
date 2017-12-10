require 'rspec'
require 'rubygems'
require 'selenium-webdriver'


describe "open_cart" do
  $data_provider_currency.each do |product, quantity, expect|
    context "given main_page" do
      it "returns currency_dollar" do
        expect(Application.get.load_home_page
               .delete_cookies
               .click_item
               .quantity(product, quantity))
        .to eql(expect)
      end
    end
  end
end
