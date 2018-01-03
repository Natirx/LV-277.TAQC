require_relative 'header_component.rb'

class Cart < HeaderComponent
  CART = {:css => "#cart"}

  def initialize driver
    @driver=driver
  end

  def cart
    @driver.find_element CART
  end

  def cart_text
    shopping_cart_block.text
  end

  def cart_click
    click_shopping_cart_block
  end

end