# require_relative 'product_page_page.rb'
require_relative '../header_menu_comp/header_menu_business.rb'
require_relative 'product_page_atomic.rb'

class ProductPageBusiness < HeaderMenuBusiness

  # attr_reader :header_menu_atomic
  attr_reader :product_page_atomic

  def initialize()
    super()
    @product_page_atomic = ProductPageAtomic.new
  end


  def verify_product_existing(product_title_name)
    @element_title = product_page_atomic.find_product_by_title(product_title_name)
  end

  def get_number_of_product_count
    @number = product_count.length
    LeftBarBusiness.new
  end

  def product_count
    # @count = Array(@driver.find_elements(product_page_atomic.products_title_path))
    @count = Array(product_page_atomic.get_products_title_path)
  end

end