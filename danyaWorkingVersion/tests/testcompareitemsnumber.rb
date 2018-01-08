require "rubygems"
require "selenium-webdriver"
require "test/unit"

require_relative '../pages/user/left_bar_component'
require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/application.rb'


class CompareItemsNumber < Test::Unit::TestCase


  def setup
    Application.get(ApplicationSourceRepository.chrome_heroku)
  end

  def teardown
    Application.remove
  end

  def test_compare_items_number

    Application.get.load_header_menu_component.menu_subitem_click("Components", "Monitors")
    @number = Application.get.load_left_bar_component.get_number_of_product_count
    assert(Application.get.load_left_bar_component.compare_items_number(@number), "Assertion Failed")
    # assert(@instance_of_class_LeftBarComponent.compare_items_number, "Assertion Failed")
    sleep 1
  end

end