require 'rubygems'
require_relative '../../data/currency.rb'
require_relative '../../data/currency_repository.rb'
require_relative '../../tools/price_utils.rb'
require_relative 'header_component.rb'
require_relative 'shopping_cart.rb'
#require_relative 'empty_cart.rb'

class HomePage < HeaderComponent

  def initialize driver
    @driver=driver
    @home_page = @driver.find_element(:id, "content")
    @product_block = @driver.find_elements(:css, "#content > .row > div")

  end

  def home_page
    @home_page
  end

  def product_block
    @product_block
  end

  def product_div name
    product_block.each do |div|
      return div if div.text.include? name

    end
  end

  def add_cart_button name
    product_div(name).find_element(css: ".fa.fa-shopping-cart")
  end


  def check_cart
    click_shopping_cart_block
    Cart.new @driver
  end

  def click_add_cart_button name
    add_cart_button(name).click
  end

  def shipping_cart_block_text
    shopping_cart_block.text
  end

# business logic of page

  def go_to_home_page
    click_logo
    HomePage new @driver
  end

  def choose_currency_by_item(currency)

    case currency.name
      when CurrencyRepository.currency_euro.name

        choose_currency_euro
      when CurrencyRepository.currency_pound_sterling.name

        choose_currency_pound_sterling
      when CurrencyRepository.currency_dollar.name
        choose_currency_dollar
      else
        choose_currency_dollar
    end
  end


  def add_all_product_to_cart (*name)
    name.each do |product|
      click_add_cart_button(product)
      sleep 1
      ShoppingCart.new @driver
    end

  end

  def add_products_to_cart (name)
    click_add_cart_button(name)
    sleep 1
    ShoppingCart.new @driver
  end

  def add_product_to_cart (*name)
    add_all_product_to_cart(*name)
  end

  def add_2
    name1=['MacBook', 'MacBook', 'iPhone']
    add_product_to_cart(*name1)
  end

end
