require "rubygems"
require "selenium-webdriver"
require "test/unit"

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository'
require_relative '../pages/user/product_page'
require_relative '../pages/application.rb'


class VerifyItem < Test::Unit::TestCase

  def setup
    Application.get(ApplicationSourceRepository.chrome_heroku)
  end

  def teardown
    Application.remove
  end

  def test_verify_item

    Application.get.load_header_menu_component.menu_subitem_click("Components", "Monitors")
    Application.get.load_product_page.verify_product_existing("Apple Cinema 30")

    sleep 1
  end

end