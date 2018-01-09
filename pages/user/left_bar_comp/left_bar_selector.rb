class LeftBarSelector

  def left_bar_item_path(item_name)
    {:xpath => "//aside[@id='column-left']/div/a[contains(text(), '#{item_name}')]"}
  end

  def self.left_bar_product_count(number_of_product_count)
    {:xpath => "//aside[@id='column-left']/div/a[contains(text(), 'Components  (#{number_of_product_count})')]"}
  end

end
