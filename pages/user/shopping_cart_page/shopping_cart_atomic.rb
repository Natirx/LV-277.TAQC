require_relative 'shopping_cart_page'
require_relative 'shopping_cart_selectors'
class ShoppingCartAtomic

  attr_reader :shopping_cart

  def initialize driver
    @shopping_cart = ShoppingCartPage.new(driver)
  end

  def find_row_with_name name
    @shopping_cart.table_body.each do |row|
      return row if row.text.include?(name)
    end
  end

  def get_product_by_name name
    find_row_with_name(name).find_elements ShoppingCartSelectors::TD
  end

  def  get_product_field_by_name name
    get_product_by_name(name).each do |td|
      td
    end
  end

  def text_quantity_field(name, text)
    get_input_field_by_name(name).clear
   get_input_field_by_name(name).send_keys text
  end

  def get_input_field_by_name name
    get_product_field_by_name(name)[3].find_element ShoppingCartSelectors::INPUT
  end

  def get_total_by_name name
    get_product_field_by_name(name)[5].text.delete("$")
  end

  def find_update_button name
    get_product_field_by_name(name)[3].find_element ShoppingCartSelectors::UPDATE_BUTTON
  end

  def remove_button name
    get_product_field_by_name(name)[3].find_element REMOVE_BUTTON
  end

  def click_update_button name
   find_update_button(name).click
  end

  def check_total_price(name, text)
    @shopping_cart.text_quantity_field(name, text)
    @shopping_cart.click_update_button(name).click
    @shopping_cart.get_total_by_name name
  end



  def check_cart_page name
    find_row_with_name(name).displayed?
  end



end
