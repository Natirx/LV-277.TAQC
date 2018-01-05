require_relative 'left_bar_comp.rb'

class LeftBarAtomic

  def initialize(driver)
    @driver = driver
  end

  def left_bar_item_click(item_name)
    find_left_bar_item(item_name).click
  end

  def get_left_bar_product_count(item_name)
    LeftBarComponent.left_bar_product_count(item_name)
  end

end