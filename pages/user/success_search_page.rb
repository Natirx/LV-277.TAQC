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
    @search_category = driver.find_element(:css, "[name = 'category_id']")
    @search_subcategory = driver.find_element(:css, ".checkbox-inline > input[name = 'sub_category']")
    @search_description = driver.find_element(:css, ".checkbox-inline > input[name = 'description']")
    @search_criteria_button = driver.find_element(:css, "#button-search")
    @search_value = driver.find_element(:css, "#content > h1")
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

  def search_category
    @search_category
  end

  def search_subcategory
    @search_subcategory
  end

  def search_description
    @search_description
  end

  def search_criteria_button
    @search_criteria_button
  end

  def search_value
    @search_value.text[9,3]
  end

  def search_criteria_button
    search_criteria_button.click
  end

  def search_subcategory_click
    search_subcategory.click
  end

  def search_category_click
    search_category.click
  end

  def search_description_click
    search_description.click
  end

  def verify_location?
    list_view_button_click
    countlist = sucess_search.size
    grid_view_button_click
    countgrid = sucess_search.size
    if(countlist == countgrid)
      return true
    else
      return false
    end
  end

end