require 'rspec'
require 'rubygems'
require 'selenium-webdriver'


describe "open_cart" do

  context "given main_page" do
    it "returns currency_dollar" do
      product = ProductRepository.MacBook
      currency = CurrencyRepository.currency_dollar
      expect(Application.get.load_home_page
             .choose_currency_by_item(currency)
             .price_macbook_product_text_withot_tax).to eql(product.prices_by_currency_item(currency))
    end
  end
end
