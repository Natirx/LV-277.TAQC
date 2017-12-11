require_relative '../../data/review.rb'
require_relative '../../data/review_repository.rb'

class ProductInfoPage < ProductPage

  def initialize(driver)
    @driver = driver
    @user_name = driver.find_element(:css, 'input#input-name')
    @text = driver.find_element(:css, '#input-review')
    @rating = driver.find_element(:css, 'input[value="1"]+input[type="radio"]')
    @continue = driver.find_element(:css, '#button-review')

  end


  def write_review
    @driver.find_element(:link, "Write a review")
  end

  def click_write_review
    write_review.click
  end


  def alert_success
    @driver.find_element(:css, '.alert.alert-success')
  end

  def alert_danger
    @driver.find_element(:css, '.alert.alert-danger')
  end

  def choose_write_review
    click_write_review
    ProductInfoPage.new @driver
  end

  def get_user_name
    @user_name
  end

  def get_text
    @text
  end

  def get_rating
    @rating
  end

  def get_continue
    @continue
  end

  def get_text_alert_success
    alert_success.text
  end

  def get_text_alert_danger
    alert_danger.text
  end


  def choose_mssg
    if alert_danger.nil?
      return get_text_alert_success
    else
      return get_text_alert_danger
    end
  end


  def without_rating(review)
    get_user_name.send_keys(review.user_name)
    get_text.send_keys(review.text)
    sleep 2
    get_continue.click
    choose_mssg
  end




  def apply_bl(review)
    get_user_name.send_keys(review.user_name)
    get_text.send_keys(review.text)
    get_rating.click
    sleep 2
    get_continue.click
    choose_mssg
  end




end
