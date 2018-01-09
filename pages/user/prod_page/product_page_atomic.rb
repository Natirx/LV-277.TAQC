require_relative '../../../pages/user/header_menu_comp/header_menu_atomic.rb'

class ProductPageAtomic

  # attr_reader :driver

  def initialize
    @driver = Application.get.browser.driver
  end

  def product_title_path(product_title_name)
    {:xpath => "//div/../div[@class='caption']/h4/a[contains(text(), '#{product_title_name}')]"}
  end

  def products_title_path
    {:xpath => "//div[@class='caption']/h4/a"}
  end

  def get_product_title_path(product_title_name)
    product_title_path(product_title_name)
  end

  def get_products_title_path
    @driver.find_element(products_title_path)
  end

  def find_product_by_title(product_title_name)
    if @driver.find_element(product_title_path(product_title_name))
      true
    elsif
      false
    end
  end

end