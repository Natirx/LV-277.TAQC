require 'selenium/webdriver'
require_relative '../header_component'
require_relative 'login_selectors_page'

class LoginPage < HeaderComponent
  def initialize(driver)
    super(driver)
  end

  def email
    @driver.find_element LoginSelectorsPage::EMAIL_FIELD
  end

  def password
    @driver.find_element LoginSelectorsPage::PASSWORD_FIELD
  end

  def login_button
    @driver.find_element LoginSelectorsPage::LOGIN_BUTTON
  end

end