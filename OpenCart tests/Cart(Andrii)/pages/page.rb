require_relative 'main'
class Page < Main

  ADDTOCART_BUTTON = {css: ".product-layout:first-child button:first-child"}
  CART_ONE_ITEM = {:css => "#cart-total"}
  CART_BUTTON = {:xpath =>"//a[@title='Shopping Cart']"}
  ITEM_FIELD ={:xpath => "//*[@id='content']//a[text()='MacBook']"}
  SIME = {css: ".product-layout:first-child .price"}

  def add_item_to_cart
    load
    click ADDTOCART_BUTTON if is_displayed?(ADDTOCART_BUTTON)
    add_to_quantity
    sleep 1
  end

  def add_item_and_press
    add_item_to_cart
    click CART_BUTTON
  end


  def get_text_from_cart
    get_text CART_ONE_ITEM if is_displayed?(CART_ONE_ITEM)
  end

  def get_1_first_chars_from_span
    get_text_from_cart[0,1].to_i
  end



end
