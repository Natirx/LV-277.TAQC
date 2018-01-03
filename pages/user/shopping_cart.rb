require_relative 'cart.rb'
require_relative '../../tools/price_utils.rb'
require_relative '../../data/product_repository.rb'

class ShoppingCart < Cart
  CART_BODY = {:css => ".dropdown-menu.pull-right"}
  SHOPPING_CART_PRODUCTS = {:css => "#cart .table-striped tr"}
  SHOPPING_CART_INFO = {:css => "#cart .table-bordered"}
  DELETE_BUTTONS = {:xpath => "//*[@class='table table-striped']//tr[1]/td//*[@class='fa fa-times']"}
  PRICE_INFO = {:xpath => "//*[@class='table table-bordered']//tr/td[not(./strong)]"}
  CART_BUTTONS = {:xpath => "//p[@class='text-right']"}

  def initialize driver
    @driver=driver
  end

  def cart_body
    @driver.find_element CART_BODY
  end

  def products_in_cart_
    @driver.find_elements SHOPPING_CART_PRODUCTS
  end

  def price_info_in_cart
    #sleep 1
    @driver.find_element SHOPPING_CART_INFO
  end

  def cart_buttons
    @driver.find_element CART_BUTTONS
  end

  def product_row name
    products_in_cart_.each do |row|
      return row if row.text.include? name
    end
  end

  def product_name name
    product_row(name).find_element(css: ".text-left a")
  end

  def count_of_products name
    product_row(name).find_elements(css: ".text-right")
  end

  def product_count name
    count_of_products(name).each do |count|
      return count.text if count.text.include? 'x'
    end
  end

  def delete_product name
    product_row(name).find_element(css: ".text-center button")
  end

  #text

  def cart_body_text
    cart_body.text
  end

  def product_name_text name
    product_name(name).text
  end

  def product_count_text name
    count_of_products(name).each do |count|
      return count.text if count.text.include? 'x'
    end
  end

  def cart_sub_total_text
    products_in_cart_[0].text
  end

  def cart_exo_tax_text
    products_in_cart_[1].text
  end

  def cart_vat_text
    products_in_cart_[2].text
  end

  def cart_total_text
    products_in_cart_[3].text
  end

  # 2 cnopku TODO

  #click

  def click_delete_button name
    delete_product(name).click
  end

  # business

  def get_cart_body_text
    cart_click
    cart_body_text
  end

  def get_product_name name
    cart_click
    product_name_text(name)
  end

  def get_product_count name
    cart_click
    product_count_text(name)
  end

  def get_sub_total
    PriceUtils.price_by_text(cart_sub_total_text)
  end

  def get_exo_tax
    PriceUtils.price_by_text(cart_exo_tax_text)
  end

  def get_vat
    PriceUtils.price_by_text(cart_vat_text)
  end

  def get_total
    PriceUtils.price_by_text(cart_total_text)
  end

  def delete_product_from_cart name
    cart_click
    delete_product(name)
    ShoppingCart.new @driver
  end
end