require_relative 'left_bar_selector.rb'
require_relative '../header_menu_comp/header_menu_atomic.rb'
require_relative '../prod_page/product_page_atomic.rb'
require_relative '../../application.rb'

class LeftBarAtomic < ProductPageAtomic

  def initialize
    super()
    # @driver = Application.get.browser.driver
  end

  def left_bar_item_click(item_name)
    find_left_bar_item(item_name).click
  end

  def get_left_bar_product_count(count_of_products)
    @driver.find_element(left_bar_product_count(count_of_products))
  end

  def left_bar_product_count(number_of_product_count)
    LeftBarSelector.left_bar_product_count(number_of_product_count)
  end

  def get_left_bar_item_path(item_name)
    LeftBarSelector.left_bar_item_path(item_name)
  end

end