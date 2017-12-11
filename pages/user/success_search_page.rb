require_relative 'path_panel_component.rb'
require_relative 'main_page.rb'
require_relative 'product_search_page.rb'


class SuccessSearchPage < ProductSearchPage

  def initialize(driver)
    @driver = driver
    @items_found = driver.find_element(:xpath, "//*[@class='caption']/h4/a")
    @list_view_button = driver.find_element(:css, "#list-view")
    @grid_view_button = driver.find_element(:css, "#grid-view")
    @sucess_search = driver.find_element(:xpath, "//*[@class='caption']/h4/a")
  end

  def items_found
    @items_found
  end

  def sucess_search
    @sucess_search
  end

  def list_view_button
    @list_view_button
  end

  def grid_view_button
    @grid_view_button
  end

  def list_view_button_click
    list_view_button.click
  end

  def grid_view_button_click
    grid_view_button.click
  end

  # def sucess_search_elements
  #   arrsearch = sucess_search.size
  # end

  def verify_location?
    list_view_button_click
    arrlist = sucess_search.size
    grid_view_button_click
    arrgrid = sucess_search.size
    if(arrlist == arrgrid)
      return true
    else
      return false
    end
  end

end