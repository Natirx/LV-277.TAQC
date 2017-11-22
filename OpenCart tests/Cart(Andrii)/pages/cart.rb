require_relative 'main'

class Cart < Main
  QUANTITY = 2
  QUANTITY_INPUT = {:xpath =>"//*[@id='content']//a[(text()='MacBook')]/..//..//input"}
  MACBOOK = {xpath: "//td/a[text()='MacBook']"}
  TOTAL_TD = {xpath: "//*[@id='content']//a[(text()='MacBook')]/../../td[last()]"}
  UNIT_PRICE = {xpath: "//*[@id='content']//a[(text()='MacBook')]/../../td[last()-1]"}
  REFRESH_BUTTON = {:xpath => "//td[text()='Product 16']//..//button[@data-original-title='Update']"}
  REMOVE_BUTTON = {:xpath => "//button[@data-original-title='Remove']"}

  def get_value_from_total
    get_text(TOTAL_TD).delete("$, ','").to_i if is_displayed?(TOTAL_TD)
  end

  def get_value_from_unit_price
    get_text(UNIT_PRICE).delete("$, ','").to_i if is_displayed?(UNIT_PRICE)
  end

  def clear_and_set_quantity
    clear_ther_enter QUANTITY, QUANTITY_INPUT if is_displayed?(QUANTITY_INPUT)
    click REFRESH_BUTTON
  end

  def load_current_url
    load (current_url)
  end

  def check_quanitity
    load (current_url)
    @total_begin = get_value_from_unit_price*QUANTITY
    clear_and_set_quantity
    @total_end = get_value_from_total
  end

  def test_remove_button
    load (current_url)
    click REMOVE_BUTTON
    sleep 1
  end
  def find_macbook
    is_displayed? MACBOOK rescue false
  end
end
