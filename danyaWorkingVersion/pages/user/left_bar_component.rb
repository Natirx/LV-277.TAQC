# class LeftBarComponent
#
#   def initialize(driver)
#     @driver = driver
#   end
#
#   def left_bar_item_path(item_name)
#     {:xpath => "//aside[@id='column-left']/div/a[contains(text(), '#{item_name}')]"}
#   end
#
#   def product_title_path
#     {:xpath => "//div[@class='caption']/h4/a"}
#   end
#
#   def find_product_by_title
#     @driver.find_element(product_title_path)
#   end
#
#   def product_count
#     @count = Array(@driver.find_elements(product_title_path))
#   end
#
#   def get_number_of_product_count
#     @number = product_count.length
#   end
#
#   def compare_product_number(get_number_of_product_count)
#     @driver.find_element(:xpath, "//aside[@id='column-left']/div/a[contains(text(), 'Components (#{get_number_of_product_count})')]")
#   end
#
#   def find_left_bar_item(item_name)
#     @driver.find_element(left_bar_item_path(item_name))
#   end
#
#   def left_bar_item_click(item_name)
#     find_left_bar_item(item_name).click
#   end
#
# end