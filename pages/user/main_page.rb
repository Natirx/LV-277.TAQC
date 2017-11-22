class MainPage
  
  def initialize(driver)
    @driver = driver
    @navigation_panel = @driver.find_element(:id, "top")
    @currency = @driver.find_element(:css, ".btn.btn-link.dropdown-toggle")
    #@dollar = @driver.find_element(:name, "USD")
    @macbook_product = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='MacBook']/../..")
    @price_macbook_product = @macbook_product.find_element(:xpath, "./p[@class='price']")
  end

  # page object get webelements

  def navigation_panel
    @navigation_panel
  end
  
  def currency
    # classic page object
    @currency
    # lazy initialization (no smoke test on initialize())
    # @driver.find_element(:css, ".btn.btn-link.dropdown-toggle")
  end

  def dollar
    click_navigation_panel
    click_currency
    @driver.find_element(:name, "USD")
  end

  def macbook_product
    @macbook_product
  end

  def price_macbook_product
    @price_macbook_product
  end
  
  # page object get text

  def price_macbook_product_text
    price_macbook_product.text
  end

  # page object atomic set text
  # page object atomic set clear
  # page object atomic set click

  def click_navigation_panel
    navigation_panel.click
  end

  def click_currency
    currency.click
  end

  def click_currency_dollar
    #click_currency
    dollar.click
  end

  # business logic of page

  def choose_currency_dollar
    #click_currency
    click_currency_dollar
    sleep 2
    MainPage.new @driver
  end

  def price_macbook_product_text_withot_tax
    sleep 2
    price_macbook_product_text()[0,7]
  end
end
