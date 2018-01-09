require_relative 'search_component_selectors'

class SearchComponent

  def initialize()
    @driver = Application.get.browser.driver
  end

  def input_search
    @driver.find_element SearchComponentSelectors::SEARCH_FIELD
  end

  def search_button
    @driver.find_element SearchComponentSelectors::SEARCH_BUTTON
  end

  def input_search_click
    input_search.click
  end

  def input_search_clear
    input_search.clear
  end

  def search_button_click
    search_button.click
  end

  # def search_button_empty_click
  #   search_component.search_button.click
  # end

end