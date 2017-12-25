require_relative 'shopping_cart_atomic'
require_relative '../guest_cart_page'

class ShoppingCartBussiness

  attr_reader :shopping_cart_atomic

def initialize shopping_cart_atomic
  @shopping_cart_atomic = shopping_cart_atomic
end
  def check_total_price(name, text)
    @shopping_cart_atomic.text_quantity_field(name, text)
    @shopping_cart_atomic.click_update_button(name)
    @shopping_cart_atomic.get_total_by_name name
  end


def click_remove_button name
  remove_button(name).click
  GuestCartPage.new @driver
end




end