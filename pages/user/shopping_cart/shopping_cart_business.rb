require_relative '../header_component'
require 'selenium/webdriver'
require_relative 'shopping_cart'
require_relative 'shopping_cart_atomic'


class ShoppingCartBusiness

  attr_reader :shopping_cart_atomic

  def initialize(shopping_cart_atomic)
    @shopping_cart_atomic = shopping_cart_atomic
  end

  def get_cart_body_text
    @shopping_cart_atomic.shopping_cart.cart_button.click
    #@cart.cart_button_click
    @shopping_cart_atomic.cart_body_text
  end

  def get_product_name name
    @shopping_cart_atomic.shopping_cart.cart_button.click
    @shopping_cart_atomic.product_name_text(name)
  end

  def get_product_count name
    @shopping_cart_atomic.shopping_cart.cart_button.click
    @shopping_cart_atomic.product_count_text(name)
  end

  def get_sub_total
    PriceUtils.price_by_text(@shopping_cart_atomic.cart_sub_total_text)
  end

  def get_exo_tax
    PriceUtils.price_by_text(@shopping_cart_atomic.cart_exo_tax_text)
  end

  def get_vat
    PriceUtils.price_by_text(@shopping_cart_atomic.cart_vat_text)
  end

  def get_total
    PriceUtils.price_by_text(@shopping_cart_atomic.cart_total_text)
  end

  def sub_total_of_product
    sleep 1
    @shopping_cart_atomic.shopping_cart.cart_button.click
    #sleep 1
    PriceUtils.sub_total_price(get_total, get_exo_tax)
  end

  def delete_product_from_cart name
    @shopping_cart_atomic.shopping_cart.cart_button.click
    delete_product(name)
    ShoppingCartBusiness.new(ShoppingCartAtomic.new(@shopping_cart_atomic.shopping_cart.driver))
  end

end