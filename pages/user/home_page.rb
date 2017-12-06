require 'rubygems'
require_relative '../../data/currency.rb'
require_relative '../../data/currency_repository.rb'
require_relative '../../tools/price_utils.rb'
require_relative 'header_component.rb'
require_relative 'item_list_component.rb'


class HomePage < HeaderComponent

  def initialize driver
    @driver=driver
    @home_page = @driver.find_element(:id, "content")
    @product_block = @driver.find_elements(:css, "#content > .row > div")

=begin
    @macbook = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='MacBook']/../..")
    @macbook_add_cart=@macbook.find_element(:xpath, "./..//button/span/..")
    @price_macbook = @macbook.find_element(:xpath, "./p[@class='price']")

    @iphone = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='iPhone']/../..")
    @iphone_add_cart=@iphone.find_element(:xpath, "./..//button/span/..")
    @price_iphone = @iphone.find_element(:xpath, "./p[@class='price']")

    @apple_cinema_30 = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[contains(text(),'Apple Cinema 30')]/../..")
    @apple_cinema_30_add_cart=@apple_cinema_30.find_element(:xpath, "./..//button/span/..")
    @price_apple_cinema_30 = @apple_cinema_30.find_element(:xpath, "./p[@class='price']")

    @cannon_eos_5d = @driver.find_element(:xpath, "//*[@class='caption']/h4/a[text()='Canon EOS 5D']/../..")
    @cannon_eos_5d_add_cart=@cannon_eos_5d.find_element(:xpath, "./..//button/span/..")
    @price_cannon_eos_5d = @cannon_eos_5d.find_element(:xpath, "./p[@class='price']")
=end
  end

  def product_block
    @product_block
  end

  def home_page
    @home_page
  end

  def div_of_product name
    product_block.each do |div|
      return div if div.text.include? name

    end
  end

  def add_cart_button name
    div_of_product(name).find_element(css: ".fa.fa-shopping-cart")
  end

  #def field_product_price
  #  @product.find_element(css: ".price")
  # end

=begin
  def macbook
    @macbook
  end

  def iphone
    @iphone
  end

  def apple_cinema_30
    @apple_cinema_30
  end

  def cannon_eos_5d
    @cannon_eos_5d
  end

  def macbook_add_cart
    @macbook_add_cart
  end

  def iphone_add_cart
    @iphone_add_cart
  end

  def apple_cinema_30_add_cart
    @apple_cinema_30_add_cart
  end

  def cannon_eos_5d_add_cart
    @cannon_eos_5d_add_cart
  end

  def price_macbook
    @price_macbook
  end

  def price_iphone
    @price_iphone
  end

  def price_apple_cinema_30
    @price_apple_cinema_30
  end

  def price_cannon_eos_5d
    @price_cannon_eos_5d
  end

# page object get text

  def price_iphone_text
    price_iphone.text
  end

  def price_macbook_text
    price_macbook.text
  end

  def price_apple_cinema_30_text
    price_apple_cinema_30.text
  end

  def price_cannon_eos_5d_text
    price_cannon_eos_5d.text
  end
=end

  # page object atomic set text
  # page object atomic set clear

  #TO DO

  # page object atomic set click
  #def get_product_price
  #   PriceUtils.price_by_text(field_product_price()[0,7])
  #end

  def click_add_cart_button name
    add_cart_button(name).click
  end

=begin
  def click_macbook_add_cart
    macbook_add_cart.click
  end

  def click_iphone_add_cart
    iphone_add_cart.click
  end

  def click_apple_cinema_30_add_cart
    apple_cinema_30_add_cart.click
  end

  def click_cannon_eos_5d_add_cart
    cannon_eos_5d_add_cart.click
  end
=end

  # business logic of page


  def go_to_home_page
    click_logo
    HomePage new @driver
  end

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

  def add_product_to_cart name
    click_add_cart_button(name)
    HomePage.new @driver
    sleep 2
  end

=begin
  def add_mackbook_to_cart
    click_macbook_add_cart
    HomePage.new @driver
  end

  def add_iphone_to_cart
    click_iphone_add_cart
    HomePage.new @driver
  end

  def add_apple_cinema_30_to_cart
    click_apple_cinema_30_add_cart
    HomePage.new @driver
  end

  def add_cannon_eos_5_to_cart
    click_cannon_eos_5d_add_cart
    HomePage.new @driver
  end
=end
=begin
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
    ItemListComponent.new @driver
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
=end
end
