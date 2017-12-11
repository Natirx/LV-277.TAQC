class ProductPage < HeaderMenuComponent

  def initialize(driver)
    @driver=driver
    @product_name=@driver.find_element(:css, 'h4>a[href*="product_id=41"]')
  end

  def choose_product_name
    click_product_name
  end

  def product_name
    @driver.find_element(:css, 'h4>a[href*="product_id=41"]')
  end

  def click_product_name
    product_name.click
    sleep 2
    ProductInfoPage.new @driver
  end


end
