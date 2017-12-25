require_relative '../header_component'
require 'selenium/webdriver'
require_relative 'login_page'
require_relative 'login_atomic_page'

class LoginBusinessPage
  def initialize(login_atomic_page)
    @login_atomic_page = login_atomic_page
  end

  def login
    login_action
    LoginBusinessPage.new(LoginAtomicPage.new(@login_atomic_page.login_page.driver))
  end
  def login_and_click_shopping_cart
    login
    HeaderComponent.new(@login_atomic_page.login_page.driver).click_shopping_cart
    ShoppingCartBussiness.new (ShoppingCartAtomic
                                   .new(@login_atomic_page.login_page.driver))
  end

  def login_action
    @login_atomic_page.email_send_text(LoginRepository.login_valid.email)
    @login_atomic_page.password_send_text(LoginRepository.login_valid.password)
    @login_atomic_page.login_button_click
  end



end