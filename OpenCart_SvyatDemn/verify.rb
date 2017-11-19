require 'test/unit'
require 'selenium-webdriver'


class Verify < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path = 'C:\Ruby24-x64\chromedriver.exe'
    @web_driver = Selenium::WebDriver.for :chrome #@driver
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 10
  end

  def test_search
    @web_driver.get 'http://oppencart.herokuapp.com/'
    @web_driver.find_element(:css, '#search > input').send_keys('mac')
    sleep 2
    @web_driver.find_element(:css, "button.btn.btn-default.btn-lg").click
    sleep 2
    arrsearch = Array(@web_driver.find_elements(:xpath, "//*[@class='caption']/h4/a"))
    arrsearch_new = []
    arrsearch.each {|item| arrsearch_new << item.text}

    #sleep 4
    @web_driver.find_element(:link, 'Desktops').click
    @web_driver.find_element(:link, 'Mac (1)').click
    sleep 2

    arrmenu = Array(@web_driver.find_elements(:xpath, "//*[@class='caption']/h4/a"))
    result = []
    arrmenu.each {|item| result << item.text}
    @web_driver.find_element(link: 'Laptops & Notebooks').click
    sleep 2
    @web_driver.find_element(:link, 'Show All Laptops & Notebooks').click
    sleep 2
    arrmenu_new = Array(@web_driver.find_elements(:xpath, "//*[@class='caption']/h4/a[contains(text(),'Mac')]"))
    arrmenu_new.each {|item| result << item.text}
    puts '##################'
    result.each {|item| puts item}
    puts '##################'
    arrsearch_new.each {|item| puts item}
    p "Test complete" if (arrsearch_new.eql?result)
  end

  def teardown
    @web_driver.quit
  end
end