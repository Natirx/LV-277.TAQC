require 'rubygems'
require 'selenium-webdriver'
require "test/unit"

class OppenCart < Test::Unit::TestCase

  def take_screen_shot(driver)
    #time_stamp = Time.now.strftime('%Y%m%d%H%M%S%L')
    time_stamp = Time.now.strftime('%m%d%H%M%S')
    driver.save_screenshot time_stamp + "_screenshots.png"
  end
  
  def ptest_firefox
    puts "start"
    #
    #Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    #driver = Selenium::WebDriver.for :chrome
    #
    Selenium::WebDriver::Firefox.driver_path="lib/geckodriver.exe"
    driver = Selenium::WebDriver.for :firefox
    #
    puts "init implicit timeOut"
    driver.manage.timeouts.implicit_wait = 10 # seconds
    #
    puts "type url"
    driver.get "http://www.google.com"
    # driver.navigate.to "http://oppencart.herokuapp.com/"
    #
    sleep 1
    puts driver.title
    #
    driver.find_element(:name, "q").send_keys "Cheese!"
    driver.find_element(:name, "q").submit
    sleep 2
    #
    # Move to element
    #driver.action.move_to(driver.find_element(:id, "navcnt")).perform
    #
    #driver.execute_script("alert('ha-ha-ha');")
    #sleep 1
    #driver.switch_to.alert.accept
    #
    driver.execute_script("arguments[0].scrollIntoView(true);", driver.find_element(:id, "navcnt"))
    sleep 2
    #
    take_screen_shot(driver)
    puts driver.title
    #
    puts "done"
    driver.quit
  end

  ###
  def ptest_firefox_profile
    puts "start"
    #
    Selenium::WebDriver::Firefox.driver_path="lib/geckodriver.exe"
    #driver = Selenium::WebDriver.for :firefox
    #
    # Deprecated
    #default_profile = Selenium::WebDriver::Firefox::Profile.from_name "default"
    #default_profile.add_extension("lib/firebug-2.0.19-fx.xpi")
    #default_profile["extensions.firebug.allPagesActivation"] = true
    #driver = Selenium::WebDriver.for(:firefox, :profile => default_profile)
    #
    # Add Extention, NEW!
    #profile = Selenium::WebDriver::Firefox::Profile.new
    #profile.add_extension("lib/firebug-2.0.19-fx.xpi")
    #options = Selenium::WebDriver::Firefox::Options.new
    #options.profile = profile
    #
    profile = Selenium::WebDriver::Firefox::Profile.from_name "default"
    profile.assume_untrusted_certificate_issuer = false
    options = Selenium::WebDriver::Firefox::Options.new(profile: profile)
    #
    driver = Selenium::WebDriver.for :firefox, options: options
    #
    puts "init implicit timeOut"
    driver.manage.timeouts.implicit_wait = 10 # seconds
    #
    puts "type url"
    driver.get "http://www.google.com"
    # driver.navigate.to "http://oppencart.herokuapp.com/"
    #
    sleep 1
    puts driver.title
    #
    driver.find_element(:name, "q").send_keys "Cheese!"
    driver.find_element(:name, "q").submit
    sleep 2
    take_screen_shot(driver)
    puts driver.title
    #
    puts "done"
    #driver.quit
  end

  def ptest_ie
    puts "start"
    #
    #Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    #driver = Selenium::WebDriver.for :chrome
    #
    #Selenium::WebDriver::Firefox.driver_path="lib/geckodriver.exe"
    #driver = Selenium::WebDriver.for :firefox
    #
    Selenium::WebDriver::IE.driver_path="lib/IEDriverServer.exe"
    driver = Selenium::WebDriver.for :ie
    #
    puts "init implicit timeOut"
    driver.manage.timeouts.implicit_wait = 10 # seconds
    #
    puts "type url"
    driver.get "http://www.google.com"
    # driver.navigate.to "http://oppencart.herokuapp.com/"
    #
    sleep 1
    puts driver.title
    #
    driver.find_element(:name, "q").send_keys "Cheese!"
    driver.find_element(:name, "q").submit
    sleep 2
    take_screen_shot(driver)
    puts driver.title
    #
    puts "done"
    driver.quit
  end

  def test_chrome_options
    puts "start"
    #
    Selenium::WebDriver::Chrome.driver_path="lib/chromedriver.exe"
    #driver = Selenium::WebDriver.for :chrome
    #
    #options = Selenium::WebDriver::Chrome::Options.new(args: %w('ignore-certificate-errors', 'disable-popup-blocking', 'disable-translate'))
    #driver = Selenium::WebDriver.for :chrome, options: options
    #
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    #options.add_argument('--start-maximized')
    #options.add_argument('--start-fullscreen')
    options.add_argument('--no-proxy-server')
    #options.add_argument('--disable-popup-blocking')
    #options.add_argument('--disable-translate')
    default_profile_path = File.expand_path('~') + "/AppData/Local/Google/Chrome/User Data" # Windows
    p default_profile_path
    #options.add_argument('--user-data-dir=' + default_profile_path)
    #options.binary = "C:\\Windows\\system32\\calc.exe"
    #options.binary = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"
    #
    # Chrome Without UI!!!
    #options.add_argument('--headless')
    driver = Selenium::WebDriver.for :chrome, options: options
    #
    puts "init implicit timeOut"
    driver.manage.timeouts.implicit_wait = 10 # seconds
    #
    puts "type url"
    driver.get "http://www.google.com"
    # driver.navigate.to "http://oppencart.herokuapp.com/"
    #
    sleep 1
    puts driver.title
    #
    driver.find_element(:name, "q").send_keys "Cheese!"
    driver.find_element(:name, "q").submit
    sleep 2
    #
    # Move to element
    #driver.action.move_to(driver.find_element(:id, "navcnt")).perform
    #
    #driver.execute_script("alert('ha-ha-ha');")
    #sleep 1
    #driver.switch_to.alert.accept
    #
    driver.execute_script("arguments[0].scrollIntoView(true);", driver.find_element(:id, "navcnt"))
    sleep 2
    #
    take_screen_shot(driver)
    puts driver.title
    #
    puts "done"
    driver.quit
  end

  def ptest_01
    p File.expand_path('~')
  end
end
