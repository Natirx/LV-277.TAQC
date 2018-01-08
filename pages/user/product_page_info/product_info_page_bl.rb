require_relative 'product_info_page_atomic.rb'
require_relative '../../../data/review.rb'
require_relative '../../../data/review_repository.rb'



class ProductInfoPageBusiness
  attr_reader :product_info_page_atomic

  def initialize (product_info_page_atomic)
    @product_info_page_atomic = product_info_page_atomic
  end

  def choose_write_review
    @product_info_page_atomic.click_write_review
    sleep 2
    ProductInfoPageBusiness.new (ProductInfoPageAtomic.new(@product_info_page_atomic.product_info_page.driver))

  end

  def leave_review (review)
    @product_info_page_atomic.choose_user_name.send_keys(review.user_name)
    sleep 2
    @product_info_page_atomic.choose_text_field.send_keys(review.text_field)
    @product_info_page_atomic.click_rating
    sleep 3
    @product_info_page_atomic.click_continue
    @product_info_page_atomic.choose_mssg
  end


  def without_rating (review)
    @product_info_page_atomic.choose_user_name.send_keys(review.user_name)
    @product_info_page_atomic.choose_text_field.send_keys(review.text_field)
    sleep 2
    @product_info_page_atomic.click_continue
    @product_info_page_atomic.choose_mssg
  end


end
