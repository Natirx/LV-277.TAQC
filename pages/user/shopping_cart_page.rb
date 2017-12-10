
require_relative 'main_page.rb'
require_relative 'guest_cart_page.rb'
require_relative 'path_panel_component.rb'
class ShoppingCartPage < PathPanelComponent

  def initialize driver
    @driver = driver
  end

  # page object get webelements
  CONTINUE_BUTTON = {:css =>"Your shopping cart is empty!"}
  CHECKOUT_BUTTON = {:css =>"a.btn.btn-primary"}
  COUPON_BUTTON = {:xpath =>".//a[starts-with(.,'Use Coupon')]"}
  GIFT_BUTTON = {:xpath => ".//a[starts-with(.,'Use Gift')]"}
  TOTAL_PRICE = {:xpath => ".//td[preceding-sibling::td[starts-with(.,'Total:')]]"}
  TABLE_BODY = {:css => ".table-responsive .table tr"}
  TD = {:css => "td"}
  INPUT = {:css => "input"}
  UPDATE_BUTTON = {:css => "button[data-original-title = 'Update']"}
  REMOVE_BUTTON = {css: "button[data-original-title='Remove']"}

  def table_head
    @driver.find_elements TABLE_HEAD
  end

  def table_body
    @driver.find_elements TABLE_BODY
  end

  def continue_button
    @driver.find_element CONTINUE_BUTTON
  end

  def checkout_button
    @drvier.find_element CHECKOUT_BUTTON
  end

  def coupon_button
    @driver.find_element COUPON_BUTTON
  end

  def total_price
    @driver.find_element TOTAL_PRICE
  end



  # page object get text
  # page object atomic set text
  # page object atomic set clear

  # page object atomic set click
  def find_row_with_name name
    table_body.each do |row|
      return row if row.text.include?(name)
    end
  end

  def get_product_by_name name
    find_row_with_name(name).find_elements TD
  end

  def  get_product_field_by_name name
    get_product_by_name(name).each do |td|
      td
    end
  end

  def send_keys name, text
    get_input_field_by_name(name).clear
    get_input_field_by_name(name).send_keys text
  end

  def get_input_field_by_name name
    get_product_field_by_name(name)[3].find_element INPUT
  end

  def get_total_by_name name
    get_product_field_by_name(name)[5].text.delete("$")
  end

  def click_update_button name
    get_product_field_by_name(name)[3].find_element UPDATE_BUTTON
  end

  def remove_button name
    get_product_field_by_name(name)[3].find_element REMOVE_BUTTON
  end

  def click_remove_button name
    remove_button(name).click
    GuestCartPage.new @driver
  end

  def click_update_buttonb name
    click_update_button(name).click
  end

  # Business Logic for tests

  def check_total_price name, text
    send_keys name, text
    click_update_button(name).click
    get_total_by_name name

  end

end
