# frozen_string_literal: true

require 'pry'
require_relative '../../user/register_page/registration_atomic_page'
require_relative 'registration_page'

class RegistrationBusinessPage
  def initialize(registration_atomic_page)
    @registration_atomic_page = registration_atomic_page
  end

  def register_account?(user)
    apply_register_account_data(user)
    policy_alert_danger?
  end

  def apply_register_account_data(user)
    @registration_atomic_page.registration_page.first_name.send_keys(user.firstname)
    @registration_atomic_page.registration_page.last_name.send_keys(user.lastname)
    @registration_atomic_page.registration_page.email.send_keys(user.email)
    @registration_atomic_page.registration_page.telephone.send_keys(user.phoneNumber)
    @registration_atomic_page.registration_page.company.send_keys(user.company)
    @registration_atomic_page.registration_page.address_1.send_keys(user.addressFirst)
    @registration_atomic_page.registration_page.city.send_keys(user.city)
    @registration_atomic_page.registration_page.postcode.send_keys(user.postCode)
    @registration_atomic_page.registration_page.country_id.find_element(:css, "option[value='#{user.country}']").click
    @registration_atomic_page.registration_page.zone_id.find_element(:css, "option[value='#{user.region}']").click
    @registration_atomic_page.registration_page.password.send_keys(user.password)
    @registration_atomic_page.registration_page.password_confirm.send_keys(user.password)
    @registration_atomic_page.registration_page.radio_yes.click
    @registration_atomic_page.registration_page.checkbox_policy.click if user.policy.equal?('true')
    @registration_atomic_page.registration_page.button_continue.click
  end

  def policy_alert_danger?
    if @registration_atomic_page.registration_page.alert_danger.nil?
      true
    else
      alert_danger_message = @registration_atomic_page.registration_page.alert_danger.text
      puts alert_danger_message
      false
    end
  end

end
