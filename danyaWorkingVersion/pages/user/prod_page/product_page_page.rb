require_relative "product_page_selector"

class ProductPage

  def self.product_title_path(product_title_name)
    ProductPageSelector.product_title_path(product_title_name)
  end

  def self.products_title_path
    ProductPageSelector.products_title_path
  end

end