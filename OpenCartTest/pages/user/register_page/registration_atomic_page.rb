require_relative 'registration_page'

class RegistrationAtomicPage

  attr_reader :registration_page

  def initialize(driver)
    @registration_page = RegistrationPage.new(driver)
  end

  # Describle more and more atomic operations

  def email_send_text(text)
    @registration_page.email.send_keys(text)
  end

  # ........
end