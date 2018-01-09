require_relative 'product_info_page_atomic.rb'
#require_relative '../../../data/review.rb'
#require_relative '../../../data/review_repository.rb'
#require_relative '../../../data/user_data/user_repository.rb'



class ProductInfoPageBusiness
  attr_reader :product_info_page_atomic

  def initialize (product_info_page_atomic)
    @product_info_page_atomic = product_info_page_atomic
  end

  def choose_write_review
    product_info_page_atomic.click_write_review
    sleep 2
    ProductInfoPageBusiness.new (ProductInfoPageAtomic.new(@product_info_page_atomic.product_info_page.driver))

  end

  def leave_review (review)
    LoggerWrapper.logger.info "Writing review"
    product_info_page_atomic.input_user_name(review)
    sleep 2
    product_info_page_atomic.input_text_field(review)
    product_info_page_atomic.click_rating
    product_info_page_atomic.click_continue
    product_info_page_atomic.choose_mssg
  end


  def without_rating (review)
    product_info_page_atomic.input_user_name(review)
    product_info_page_atomic.input_text_field(review)
    sleep 2
    product_info_page_atomic.click_continue
    product_info_page_atomic.choose_mssg
  end


end
