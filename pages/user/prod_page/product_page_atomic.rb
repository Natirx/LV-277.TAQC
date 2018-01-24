require_relative '../header_menu_comp/header_menu_atomic.rb'
require_relative 'product_page_business.rb'
require_relative 'product_page_selector.rb'
require_relative '../../application.rb'

class ProductPageAtomic

  # attr_reader :driver

  def initialize
    @driver = Application.get.browser.driver
  end

  # def product_title_path(product_title_name)
  #   {:xpath => "//div/../div[@class='caption']/h4/a[contains(text(), '#{product_title_name}')]"}
  # end
  #
  # def products_title_path
  #   {:xpath => "//div[@class='caption']/h4/a"}
  # end

  def get_product_title_path(product_title_name)
    ProductPageSelector.product_title_path(product_title_name)
  end

  def get_products_title_path
    @driver.find_elements(ProductPageSelector.products_title_path)
  end

  def find_product_by_title(product_title_name)
    if @driver.find_element(ProductPageSelector.product_title_path(product_title_name))
      true
    elsif
      false
    end
  end

end