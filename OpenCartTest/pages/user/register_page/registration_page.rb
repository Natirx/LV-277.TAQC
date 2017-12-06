# frozen_string_literal: true

require_relative '../register_page/registration_selectors_page'

class RegistrationPage
  attr_reader :web_driver

  def initialize(driver)
    @web_driver = driver
  end

  def first_name
    web_driver.find_element(RegistrationSelectorsPage::FIRST_NAME)
  end

  def last_name
    web_driver.find_element(RegistrationSelectorsPage::LAST_NAME)
  end

  def email
    @web_driver.find_element(RegistrationSelectorsPage::EMAIL)
  end

  def telephone
    @web_driver.find_element(RegistrationSelectorsPage::TELEPHONE)
  end

  def fax
    @web_driver.find_element(RegistrationSelectorsPage::FAX)
  end

  def company
    @web_driver.find_element(RegistrationSelectorsPage::COMPANY)
  end

  def address_1
    @web_driver.find_element(RegistrationSelectorsPage::ADDRESS_1)
  end

  def address_2
    @web_driver.find_element(RegistrationSelectorsPage::ADDRESS_2)
  end

  def city
    @web_driver.find_element(RegistrationSelectorsPage::CITY)
  end

  def postcode
    @web_driver.find_element(RegistrationSelectorsPage::POSTCODE)
  end

  def country_id
    @web_driver.find_element(RegistrationSelectorsPage::COUNTRY_ID)
  end

  def zone_id
    @web_driver.find_element(RegistrationSelectorsPage::ZONE_ID)
  end

  def password
    @web_driver.find_element(RegistrationSelectorsPage::PASSWORD)
  end

  def password_confirm
    @web_driver.find_element(RegistrationSelectorsPage::CONFIRM_PASSWORD)
  end

  def radio_yes
    @web_driver.find_element(RegistrationSelectorsPage::RADIO_YES)
  end

  def radio_no
    @web_driver.find_element(RegistrationSelectorsPage::RADIO_NO)
  end

  def checkbox_policy
    @web_driver.find_element(RegistrationSelectorsPage::CHECKBOX_POLICY)
  end

  def button_continue
    @web_driver.find_element(RegistrationSelectorsPage::BUTTON_CONTINUE)
  end

  def inputs_text_danger_messages
    @web_driver.find_elements(RegistrationSelectorsPage::INPUTS_DANGER_MESSAGES)
  end

  def alert_danger
    @web_driver.find_element(RegistrationSelectorsPage::ALERT_DANGER_MESSAGE)
  end
end
