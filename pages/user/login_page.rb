require_relative '../../data/login.rb'
require_relative '../../data/login_repository.rb'
require_relative 'shopping_cart_page/shopping_cart_atomic'
require_relative 'shopping_cart_page/shopping_cart_bussiness'
require_relative 'header_component.rb'
require_relative 'main_page.rb'

class LoginPage < HeaderComponent

  def initialize driver
    @driver = driver
  end

  EMAIL_FIELD = {css: "#input-email"}
  PASSWORD_FIELD = {css: "#input-password"}
  LOGIN_BUTTON = {css: "input[value='Login']"}


  def click_login_button
    login_button.click
  end

  def login_valid_user
    email.send_keys(LoginRepository.login_valid.email)
    password.send_keys(LoginRepository.login_valid.password)
    click_login_button
    click_shopping_cart
    ShoppingCartBussiness.new (ShoppingCartAtomic
                                  .new(@driver))

  end


end
