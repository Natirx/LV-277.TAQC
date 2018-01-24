require_relative '../header_menu_comp/header_menu_business.rb'
require_relative 'product_page_atomic.rb'

class ProductPageBusiness < HeaderMenuBusiness

  attr_reader :product_page_atomic

  def initialize()
    super()
    @product_page_atomic = ProductPageAtomic.new
  end

  @@number = 0

  def verify_product_existing(product_title_name)
    @element_title = product_page_atomic.find_product_by_title(product_title_name)
  end

  def get_number_of_product_count
    @@number = product_count.length
    LeftBarBusiness.new
  end

  def product_count
    @count = Array(product_page_atomic.get_products_title_path)
  end

  def self.count_of_products
    @@number
  end

end