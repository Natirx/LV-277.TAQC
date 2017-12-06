require_relative '../../data/currency.rb'
require_relative '../../data/currency_repository.rb'
require_relative '../../tools/price_utils.rb'
require_relative 'header_component.rb'
require_relative 'guest_cart_page.rb'


class MainPage < HeaderComponent

  def initialize(driver)
    @driver = driver
    @macbook_product = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='MacBook']/../..")
    @price_macbook_product = @macbook_product.find_element(:xpath, "./p[@class='price']")
  end

  # page object get webelements



  def price_macbook_product
    @price_macbook_product
  end

  # page object get text


  def price_macbook_product_text
    price_macbook_product.text
  end
  def macbook_product
    @macbook_product
  end
  # page object atomic set text
  # page object atomic set clear
  # page object atomic set click

  def click_item
    click_macbook
    click_macbook
    click_shopping_cart
    GuestCartPage.new @driver
  end

  # business logic of page
  def choose_currency_by_item(currency)
    # TODO use OOP
    case currency.name
    when CurrencyRepository.currency_euro.name
      # TODO
      choose_currency_dollar
    when CurrencyRepository.currency_pound_sterling.name
      # TODO
      choose_currency_dollar
    when CurrencyRepository.currency_dollar.name
      choose_curency_dollar
    else
      choose_currency_dollar
    end
  end



  def price_macbook_product_text_withot_tax
    sleep 2
    PriceUtils.price_by_text(price_macbook_product_text()[0,7])
  end
end
