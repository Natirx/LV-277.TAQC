require_relative '../header_component'
require 'selenium/webdriver'
require_relative 'home_page'
require_relative 'home_page_atomic'
require_relative '../shopping_cart/shopping_cart_atomic'
require_relative '../shopping_cart/shopping_cart'
require_relative '../shopping_cart/shopping_cart_business'

class HomePageBusiness

  attr_reader :home_page_atomic

  def initialize(home_page_atomic)
    @home_page_atomic = home_page_atomic
  end



  def add_product_to_cart (name)
    @home_page_atomic.click_add_button(name)
  end

  def add_all_product_to_cart (*name)
    name.each do |product|
      add_product_to_cart(product)
      #sleep 1
      #ShoppingCart.new @driver
    end
    ShoppingCartBusiness.new(ShoppingCartAtomic.new(@home_page_atomic.home_page.driver))
  end

  def add_2
    name1=['MacBook', 'MacBook', 'iPhone']
    add_all_product_to_cart(*name1)
  end



end