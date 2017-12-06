require 'rubygems'
require 'selenium-webdriver'
require "test/unit"
require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/main_page.rb'
require_relative '../pages/user/guest_cart_page.rb'

class OppenCart < Test::Unit::TestCase




  def setup
    Application.get(ApplicationSourceRepository.chrome_heroku)
  end

  def teardown
    Application.remove
  end

  def test_oppen_cart_page_obj2 #(product, currency)

    Application.get.load_home_page
    .click_item
    .click_item_press_display

    sleep 3
    # product = ProductRepository.MacBook
    # currency = CurrencyRepository.currency_dollar
    # #
    # # steps
    # #choose_currency_dollar
    # actual = Application.get.load_home_page \
    #   .choose_currency_by_item(currency) \
    #   .price_macbook_product_text_withot_tax
    # #
    # # check
    # assert_equal  product.prices_by_currency_item(currency), actual
    #
    # return to previous state
  end

end

# Test BAD. Mixed
# Logic of Test;
# Using engine Selenium
# Selectors
# Test Data
#
# Must be
# Application.start.gotoMainPage.choose(Dollar)
# Check price MainPage.getPrice(MacBook)
