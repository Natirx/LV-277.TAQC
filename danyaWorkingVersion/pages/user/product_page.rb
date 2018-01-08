# class ProductPage
#
#   def initialize(driver)
#     @driver = driver
#   end
#
#   def product_title_path(product_title_name)
#     {:xpath => "//div/../div[@class='caption']/h4/a[contains(text(), '#{product_title_name}')]"}
#   end
#
#   def find_product_by_title(product_title_name)
#     @driver.find_element(product_title_path(product_title_name))
#   end
#
#   def verify_product_existing(product_title_name)
#     @element_title = find_product_by_title(product_title_name)
#   end
#
# end