require "rubygems"
require "selenium-webdriver"
require "test/unit"

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/application.rb'


class FindItem < Test::Unit::TestCase

  def setup
    Application.get(ApplicationSourceRepository.chrome_heroku)
  end

  def teardown
    Application.remove
  end

  def test_finditem

    Application.get.load_header_menu_component.menu_subitem_click("Components", "Monitors")

    sleep 1
  end

end