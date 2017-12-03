class GuestCartPage < PathPanelComponent
  def initialize driver
    @driver = driver
  end
  # page object get webelements
  CONTINUE_BUTTON = {:css, "Your shopping cart is empty!"}
  CHECKOUT_BUTTON = {:css, "a.btn.btn-primary"}
  COUPON_BUTTON = {:xpath, ".//a[starts-with(.,'Use Coupon')]"}
  GIFT_BUTTON = {:xpath, ".//a[starts-with(.,'Use Gift')]"}
  TOTAL_PRICE = {:xpath, ".//td[preceding-sibling::td[starts-with(.,'Total:')]]"}

  def continue_button
    @driver.find_element CONTINUE_BUTTON
  end

  def checkout_button
    @drvier.find_element CHECKOUT_BUTTON
  end

  def coupon_button
    @driver.find_element COUPON_BUTTON
  end

  def total_price
    @driver.find_element TOTAL_PRICE
  end
end
