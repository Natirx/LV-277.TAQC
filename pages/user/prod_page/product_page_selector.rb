class ProductPageSelector

  def self.product_title_path(product_title_name)
    {:xpath => "//div/../div[@class='caption']/h4/a[contains(text(), '#{product_title_name}')]"}
  end

  def self.products_title_path
    {:xpath => "//div[@class='caption']/h4/a"}
  end

end