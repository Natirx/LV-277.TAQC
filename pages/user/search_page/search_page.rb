require_relative "../search_component/search_component.rb"
require_relative "search_page_selectors"


class SearchPage < SearchComponent

  def initialize()
    super()
  end

  def items_found
    @driver.find_element SearchPageSelectors::ITEMS_FOUND
  end

  def success_search
    @driver.find_elements SearchPageSelectors::SUCCESS_SEARCH
  end

  def list_view_button
    @driver.find_element SearchPageSelectors::LIST_VIEW_BUTTON
  end

  def grid_view_button
    @driver.find_element  SearchPageSelectors::GRID_VIEW_BUTTON
  end

  def search_category
    @driver.find_element SearchPageSelectors::SEARCH_CATEGORY
  end

  def search_subcategory
    @driver.find_element SearchPageSelectors::SEARCH_SUBCATEGORY
  end

  def search_description
    @driver.find_element SearchPageSelectors::SEARCH_DESCRIPTION
  end

  def search_value
    @driver.find_element SearchPageSelectors::SEARCH_VALUE
  end

  def empty_search
    @driver.find_element SearchPageSelectors::EMPTY_SEARCH
  end

  def list_view_button_click
    list_view_button.click
  end

  def grid_view_button_click
    grid_view_button.click
  end

end