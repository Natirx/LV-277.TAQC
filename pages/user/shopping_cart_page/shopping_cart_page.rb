require_relative '../header_component'
require_relative 'shopping_cart_selectors'

class ShoppingCartPage < HeaderComponent

  def initialize driver
    super(driver)
  end

  def table_body
    driver.find_elements ShoppingCartSelectors::TABLE_BODY
  end

  def continue_button
    driver.find_element ShoppingCartSelectors::CONTINUE_BUTTON
  end

  def checkout_button
    drvier.find_element ShoppingCartSelectors::CHECKOUT_BUTTON
  end

  def coupon_button
    driver.find_element ShoppingCartSelectors::COUPON_BUTTON
  end

  def total_price
    driver.find_element ShoppingCartSelectors::TOTAL_PRICE
  end

  def td
    driver.find_element ShoppingCartSelectors::TD
  end

  def input
    driver.find_element ShoppingCartSelectors::INPUT
  end

end