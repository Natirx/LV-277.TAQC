require_relative 'path_panel_component.rb'

class ProductSearchPage < PathPanelComponent

  def initialize(driver)
    @driver = driver
    @input_search = driver.find_element(:css, "#search > input")
    @search_button = driver.find_element(:css, "button.btn.btn-default.btn-lg")
  end

  def input_search
    @input_search
  end

  def search_button
    @search_button
  end

  def input_search_click
    input_search.click
  end

  def input_search_text text
    input_search.send_keys text
    search_button.click
    SuccessSearchPage.new @driver
  end

  def input_search_clear
    input_search.clear
  end

  def search_button_click
    search_button.click
    SuccessSearchPage.new @driver
  end

  def search_button_empty_click
    search_button.click
    FailureSearchPage.new @driver
  end

end