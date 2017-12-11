require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'
require_relative '../data/application_source_repository.rb'
require_relative '../data/application_source.rb'
require_relative '../pages/user/home_page.rb'
require_relative '../pages/user/product_page.rb'
require_relative '../pages/user/product_info_page.rb'
require_relative '../pages/Application.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../data/review.rb'
require_relative '../data/review_repository.rb'

class Name_field_test  < Test::Unit::TestCase

  def setup
    Application.get(ApplicationSourceRepository.firefox_heroku)
  end

  def teardown
    Application.remove
  end

  def test_name_field_invalid
    # precondition

    product = ProductRepository.desktop_mac
    review = ReviewRepository.short_valid_name_field

    # steps
    home = Application.get.load_home_page\
      .choose_desktop_product_by_category(product)\
      .choose_product_name\
      .choose_write_review\
      .apply_bl(review)
    #.input_valid_value
    #ReviewPage.new(driver)
  end

end
