require_relative "search_component.rb"
require_relative "../search_page/search_page.rb"

class SearchComponentBusiness
  attr_reader :search_component

  def initialize()
    @search_component = SearchComponent.new()
  end

  def input_search_text text
    search_component.input_search.clear
    search_component.input_search.send_keys text
    search_component.search_button.click
    SearchPageBusiness.new
  end

  def make_search_button_click
    search_component.search_button_click
    SearchPageBusiness.new
  end

end