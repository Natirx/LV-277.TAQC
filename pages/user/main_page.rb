require_relative '../../data/currency.rb'
require_relative '../../data/currency_repository.rb'
require_relative '../../tools/price_utils.rb'
require_relative 'header_component.rb'

class MainPage < HeaderComponent

  def initialize(driver)
    super
    @driver = driver
  end

  # page object get webelements



  # page object get text

  def price_macbook_product_text
    price_macbook_product.text
  end

  # page object atomic set text
  # page object atomic set clear
  # page object atomic set click



  # business logic of page


  def price_macbook_product_text_withot_tax
    sleep 2
    PriceUtils.price_by_text(price_macbook_product_text()[0,7])
  end
end
