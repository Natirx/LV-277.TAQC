require_relative 'product_page.rb'


class ProductPageAtomic

  attr_reader :product_page


  def initialize(driver)
    @product_page = ProductPage.new (driver)
  end

  def click_product_name
    product_page.product_name.click
  end

end
