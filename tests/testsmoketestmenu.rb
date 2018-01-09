require "rubygems"
require "selenium-webdriver"
require "test/unit"

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/application.rb'


class SmokeTestMenu < Test::Unit::TestCase

  def setup
    Application.get(ApplicationSourceRepository.chrome_heroku)
  end

  def teardown
    Application.remove
  end

  def test_smoke_menu

    @menu_items_array = ["Desktops", "Laptops & Notebooks", "Components", "Tablets", "Software", "Phones & PDAs", "Cameras", "MP3 Players"]

    @menu_exist_items = Application.get.load_header_menu_component.menu_check_items(@menu_items_array)
    if @menu_exist_items.eql?(@menu_items_array)
      p "test is passed!"
    elsif
      p "test not passed!"
    end

  end

end