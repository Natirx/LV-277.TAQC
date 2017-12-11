require_relative 'path_panel_component.rb'
require_relative 'main_page.rb'
require_relative 'product_search_page.rb'


class FailureSearchPage < ProductSearchPage

  def initialize(driver)
    @driver = driver
    @empty_search = driver.find_element(:xpath, "//input[@id='button-search']/following-sibling::p")
  end

  def empty_search
    @empty_search
  end

  def check_empty_search
    empty_search.displayed?
  end

end