require_relative 'search_page.rb'
require_relative '../search_component/search_component_business.rb'

class SearchPageBusiness < SearchComponentBusiness
  attr_reader :search_page

  def initialize
    super()
    @search_page = SearchPage.new
  end

  def search_value_text
    search_page.search_value.text[9..-1]
  end

  def check_empty_search
    search_page.empty_search.displayed?
  end

  def success_search_count
    search_page.success_search
  end

  def search_all_items
    count = success_search_count.count
  end

  def verify_location?
    search_page.list_view_button_click
    countlist = search_page.success_search.size
    search_page.grid_view_button_click
    countgrid = search_page.success_search.size
    if (countlist == countgrid)
      return true
    else
      return false
    end
    end
end
