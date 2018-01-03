class HomePageBusiness



  def check_cart
    click_shopping_cart_block
    Cart.new @driver
  end

end