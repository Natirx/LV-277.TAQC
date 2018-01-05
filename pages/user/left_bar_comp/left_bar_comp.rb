require_relative 'left_bar_selector.rb'

class LeftBarComponent

  def left_bar_item_path(item_name)
    LeftBarSelector.left_bar_item_path(item_name)
  end

  def self.left_bar_product_count(item_name)
    LeftBarSelector.left_bar_product_count(item_name)
  end

end