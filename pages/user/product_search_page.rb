require_relative 'header_component.rb'
require_relative 'path_panel_component.rb'


class ProductSearchPage < PathPanelComponent

  def initialize(driver)
    @driver = driver
    @input_search = driver.find_element(:css, "input-search")
    @search_button = driver.find_element(:css, "button.btn.btn-default.btn-lg")
    @search_category = driver.find_element(:css, "select[name = 'category_id']")
    @search_subcategory = driver.find_element(:css, ".checkbox-inline > input[name = 'sub_category']")
    @search_description = driver.find_element(:css, ".checkbox-inline > input[name = 'description']")
    @search_criteria_button = driver.find_element(:css, "button-search")
    @search_value = driver.find_element(:css, "#content > h1")
  end

  def input_search
    @input_search
  end

  def search_button
    @search_button
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
    @search_value.text.substring(9)
  end

  def input_search_clear
    input_search.clear
  end

  #

  def input_search_click
    input_search.click
  end

  def input_search_text text
    input_search.send_keys text
  end

  def input_search_clear
    input_search.clear
  end

  def search_button_click
    search_button.click
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

end