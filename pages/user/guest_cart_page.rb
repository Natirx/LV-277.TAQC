require_relative 'path_panel_component.rb'
require_relative 'main_page.rb'


class GuestCartPage < PathPanelComponent

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
  REMOVE_BUTTON = {:css => "button[data-original-title = 'Remove']"}

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





  def send_keys name, text
    get_input_field_by_name(name).clear
    get_input_field_by_name(name).send_keys text

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

  def print_row name
    find_row_with_name(name).find_elements TD
  end

  def print_td name
    print_row(name).each do |td|
      td
    end
  end
  def get_input_field_by_name name
    print_td(name)[3].find_element INPUT
  end
  def get_total_by_name name
    print_td(name)[5].text.delete("$")
  end
  def click_update_button name
    print_td(name)[3].find_element UPDATE_BUTTON
  end

  def quantity name, text
    delete_cookies
    send_keys name, text
    click_update_button(name).click
    sleep 2
    get_total_by_name name
  end

end
