require_relative 'product_info_page.rb'
require_relative '../../../data/review.rb'
require_relative '../../../data/review_repository.rb'

class ProductInfoPageAtomic
  attr_reader :product_info_page

  def initialize(driver)
    @product_info_page = ProductInfoPage.new (driver)
  end


  def click_write_review
    @product_info_page.write_review.click
  end

  def user_name_send_keys (review)
    @product_info_page.user_name.send_keys(review.user_name)
  end

  def text_field_send_text #(review)
    @product_info_page.text_field.send_keys("jbfesdkxkl'bkhfjakdv")#review.text_field)
  end



  def click_text_field
    @product_info_page.text_field.click
  end

  def click_rating
    @product_info_page.rating.click
  end

  def click_continue
    @product_info_page.continue.click
  end

  def get_text_alert_success
    @product_info_page.alert_success.text
  end

  def get_text_alert_danger
    @product_info_page.alert_danger.text
  end




  def choose_mssg
    @product_info_page.alert_danger
    return get_text_alert_danger
    #$log.info "Warning: data are invalid, try again"

  rescue Selenium::WebDriver::Error::NoSuchElementError
    return get_text_alert_success
    #$log.info "INFO: review was send"

  rescue Selenium::WebDriver::Error::NoSuchElementError
    #$log.info "INFO: review was send"
    return get_text_alert_success

  end
end
