require_relative 'product_page_atomic.rb'
require_relative '../product_page_info/product_info_page_bl.rb'
require_relative '../product_page_info/product_info_page_atomic.rb'


class ProductPageBusiness
  attr_reader :product_page_atomic

  def initialize(product_page_atomic)
    @product_page_atomic = product_page_atomic
  end

  def choose_product_name
    @product_page_atomic.click_product_name
    ProductInfoPageBusiness.new (ProductInfoPageAtomic.new(@product_page_atomic.product_page.driver))
  end

end
