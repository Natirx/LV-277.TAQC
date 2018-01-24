require_relative '../prod_page/product_page_business.rb'
require_relative 'left_bar_atomic.rb'

class LeftBarBusiness < HeaderMenuBusiness

  attr_reader :left_bar_atomic

  def initialize()
    super()
    @left_bar_atomic = LeftBarAtomic.new
  end

  def left_bar_product_count(item_name)
    left_bar_atomic.get_left_bar_product_count(item_name)
  end

  def get_left_bar_product_count
    @number = ProductPageBusiness.count_of_products
    if left_bar_atomic.get_left_bar_product_count(@number)
      true
    elsif
      false
    end
  end

  # def get_left_bar_product_count(count_of_products)
  #   # if left_bar_atomic.left_bar_product_count(item_name)
  #   if left_bar_atomic.get_left_bar_product_count(count_of_products)
  #     true
  #   elsif
  #     false
  #   end
  # end

end