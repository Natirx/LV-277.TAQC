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



# page object get text



  # page object atomic set text
  # page object atomic set clear

  #TO DO

  # page object atomic set click


  def click_add_cart_button name
    add_cart_button(name).click
  end


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
        choose_currency_dollar
      else
        choose_currency_dollar
    end
  end

  def add_product_to_cart name
    click_add_cart_button(name)
    sleep 1
    ItemListComponent.new @driver
  end


end
