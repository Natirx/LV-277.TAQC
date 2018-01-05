require_relative 'product_page_page.rb'
# require_relative 'product_page_business.rb'

class ProductPageAtomic

  def initialize(driver)
    @driver = driver
  end

  def find_product_by_title(product_title_name)
    @driver.find_element(ProductPage.product_title_path(product_title_name))
  end

  def verify_product_existing(product_title_name)
    @element_title = find_product_by_title(product_title_name)
  end

  def get_number_of_product_count
    @number = product_count.length
  end

  def product_count
    @count = Array(@driver.find_elements(ProductPage.products_title_path))
  end

end