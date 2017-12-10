require_relative 'path_panel_component.rb'
require_relative 'main_page.rb'


class GuestCartPage < PathPanelComponent

  def initialize driver
    @driver = driver
  end

  EMPTY_CART = {css: "#content > p"}

  def empty_cart
    @driver.find_element EMPTY_CART
  end

  def check_empty_cart
    sleep 2
    empty_cart.displayed?
  end



end
