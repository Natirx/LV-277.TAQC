# frozen_string_literal: true

require 'pry'
require 'selenium/webdriver'
require_relative '../page_objects/login_page'
require_relative 'business_object'
require_relative '../utils/web_driver_utils'

class LoginBO < BusinessObject
  def initialize
    super
    @login_page = LoginPage.new
  end

  def login?(user)
    login_action(user)
    if !@login_page.login_alert_danger.nil?
      print_alert_danger_message
      logger.info 'Login was unsuccessful'
      false
    else
      logger.info 'Login was successful'
      true
    end
  end

  def print_alert_danger_message
    login_alert_danger_message = @login_page.login_alert_danger.text
    logger.info login_alert_danger_message
  end

  def login_action(user)
    @login_page.email.send_keys(user.email)
    @login_page.password.send_keys(user.password)
    @login_page.login_button.click
  end

  def clear_user_data
    @login_page.email.clear
    @login_page.password.clear
  end
end
