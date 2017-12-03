require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/main_page.rb'

describe "open_cart" do

  #before(:each) do
  before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  #after(:each) do
  after(:all) do
    puts "after all ran"
    Application.remove
  end

  context "given main_page" do
    it "returns currency_dollar" do
      product = ProductRepository.MacBook
      currency = CurrencyRepository.currency_dollar
      expect(Application.get.load_home_page \
      .choose_currency_by_item(currency) \
      .price_macbook_product_text_withot_tax).to eql(product.prices_by_currency_item(currency))
    end
  end
end