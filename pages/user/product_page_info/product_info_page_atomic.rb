require_relative 'product_info_page.rb'
require_relative '../../../data/user_data/user_repository.rb'
#require_relative '../../../data/review.rb'
#require_relative '../../../data/review_repository.rb'


class ProductInfoPageAtomic
  attr_reader :product_info_page

  def initialize (driver)
    @product_info_page = ProductInfoPage.new (driver)
  end


  def click_write_review
    product_info_page.write_review.click
  end


  def  input_user_name(review)
    product_info_page.user_name.send_keys(review.user_name)
  end


  def input_text_field(review)
    product_info_page.text_field.send_keys(review.text_field)
  end


  def click_rating
    product_info_page.rating.click
  end

  def click_continue
    product_info_page.continue.click
  end

  def get_text_alert_success
    product_info_page.alert_success.text
  end

  def get_text_alert_danger
    product_info_page.alert_danger.text
  end




  def choose_mssg
    product_info_page.alert_danger
    return get_text_alert_danger
    LoggerWrapper.logger.info "Warning: data are invalid, review wasn`t send, try again"

  rescue Selenium::WebDriver::Error::NoSuchElementError
    return get_text_alert_success
    LoggerWrapper.logger.info "INFO: Review was send."

  rescue Selenium::WebDriver::Error::NoSuchElementError
    LoggerWrapper.logger.info "INFO: Review was send."
    return get_text_alert_success

  end
end
