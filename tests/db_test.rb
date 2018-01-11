require 'rubygems'
require 'test/unit'
require_relative '../db/service/oc_customer_login_service.rb'
require_relative '../pages/application.rb'

class DBTest < Test::Unit::TestCase

  def setup
    Application.get(ApplicationSourceRepository.chrome_server7)
    #appl = Application.new(ApplicationSourceRepository.firefox_heroku)
    @ocCustomerLoginService = OcCustomerLoginService.new
    #print "\t***setup appl = "
    #p appl
    #sleep 5
  end

  def teardown
    Application.remove
  end

  def test_unlock_user
    # precondition
    Application.get.load_home_page
    email = 'invalid@mail.com'
    #
    # steps
    driver = Application.get.browser.driver
    driver.find_element(:css, ".list-inline > li > a.dropdown-toggle").click
    driver.find_element(:css, ".list-inline > li > a.dropdown-toggle + ul > li:last-child > a").click
    #
    driver.find_element(:id, "input-email").send_keys email
    sleep 1
    6.times { driver.find_element(:css, ".btn.btn-primary[type='submit']").click }
    #6.times { driver.find_element(:css, ".btn.btn-primary[type='submit']").click; sleep 1}
    #
    # check
    # After 6
    assert_true driver.find_element(:css, ".alert.alert-danger").text.include? "Please try again in 1 hour"
    assert_true(@ocCustomerLoginService.get_total_by_email(email).to_i >= 5)
    puts "number of total: #{@ocCustomerLoginService.get_total_by_email email}"
    puts "date_added: #{@ocCustomerLoginService.get_date_added_by_email email}"
    # assert_equal
    #
    # return to previous state
    @ocCustomerLoginService.unlock_customer_login_by_email(email)
    # check
    driver.find_element(:css, ".btn.btn-primary[type='submit']").click
    assert_true driver.find_element(:css, ".alert.alert-danger").text.include? "No match for E-Mail Address and/or Password"
    #
    t1 = Time.now.getlocal
    puts "Original Time: #{t1}"
    puts "(t1.to_time - 3600).to_datetime Time: #{(t1.to_time - 3600).to_datetime}"
    t2=(t1.to_time - 3600).to_datetime.strftime("%Y_%m_%d_%H-%M-%S")
    puts "strftime(Y_m_d_H-M-S) Time: #{t2}"
    puts "number2 of total: #{@ocCustomerLoginService.get_total_by_email email}"
    puts "date_added: #{@ocCustomerLoginService.get_date_added_by_email email}"
  end

end
