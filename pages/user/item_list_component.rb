require_relative 'header_component.rb'
require_relative '../../tools/price_utils.rb'
require_relative '../../data/product_repository.rb'

class ItemListComponent < HeaderComponent

  SHOPPING_CART_PRODUCT = {:css => "#cart .table-striped tr"}
  SHOPPING_CART_INFO = {:css => "#cart .table-bordered"}
  DELETE_BUTTONS = {:xpath => "//*[@class='table table-striped']//tr[1]/td//*[@class='fa fa-times']"}
  PRICE_INFO = {:xpath => "//*[@class='table table-bordered']//tr/td[not(./strong)]"}

  def initialize driver
    @driver = driver
  end

  def shopping_cart_product
    @driver.find_elements SHOPPING_CART_PRODUCT
  end

  def info_about_product_in_cart
    click_shopping_cart_block
    shopping_cart_product
  end

  def row_with_product name
    info_about_product_in_cart.each do |row|
      return row if row.text.include? name
    end
  end

  def cart_price_info

    sleep 1
    @driver.find_elements PRICE_INFO
  end

  def product_name name
    row_with_product(name).find_element(css: ".text-left a")
  end

  def count_of_products name
    row_with_product(name).find_elements(css: ".text-right")
  end

  def product_count name
    count_of_products(name).each do |count|
      return count.text if count.text.include? 'x'
    end
  end

  def product_name_text name
    product_name(name).text
  end

  def delete_button name
    row_with_product(name).find_element(css: ".text-center button")
  end

  def click_delete_button name
    delete_button(name).click
  end

  def delete_product name
    click_delete_button(name)
    ItemListComponent.new @driver
  end


  def table_sub_total
    PriceUtils.price_by_text(cart_price_info[0].text)
  end

  def table_exo_tax
    PriceUtils.price_by_text(cart_price_info[1].text)
  end

  def table_vat
    PriceUtils.price_by_text(cart_price_info[2].text)
  end

  def table_total
    PriceUtils.price_by_text(cart_price_info[3].text)
  end

  def sub_total_of_product
    PriceUtils.sub_total_price(table_total, table_exo_tax)
  end

end