require 'selenium/webdriver'
require_relative 'product_info_page_selectors.rb'


class ProductInfoPage <ProductPage

  def initialize (driver)
    super(driver)
  end

  def user_name
    @driver.find_element(ProductInfoPageSelectors::USER_NAME)
  end

  def text_field
    @driver.find_element(ProductInfoPageSelectors::TEXT_FIELD)
  end

  def rating
    @driver.find_element(ProductInfoPageSelectors::RATING)
  end

  def continue
    @driver.find_element(ProductInfoPageSelectors::CONTINUE)
  end


  def write_review
    @driver.find_element(ProductInfoPageSelectors::WRITE_REVIEW)
  end


  def alert_success
    @driver.find_element(ProductInfoPageSelectors::ALERT_SUCCESS)
  end

  def alert_danger
    @driver.find_element(ProductInfoPageSelectors::ALERT_DANGER)
  end
end
