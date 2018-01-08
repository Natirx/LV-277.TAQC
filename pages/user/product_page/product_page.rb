require 'selenium/webdriver'
#require_relative '../header_component/header_component.rb'
#require_relative '../header_component/header_component_bl.rb'
require_relative 'product_page_selectors.rb'

class ProductPage<HeaderMenuComponent

  def initialize(driver)
    #@driver = driver
    super (driver)
  end


  def product_name
    @driver.find_element(ProductPageSelectors::PRODUCT_NAME)
  end


end
