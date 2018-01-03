require_relative 'cart_component'

class CartAtomic

    attr_reader :cart

    def initialize(driver)
      @cart = CartComponent.new(driver)
    end

    def cart_button_text
      @cart.cart_button.text
    end

    def cart_button_click
      @cart.cart_button.click
    end

end