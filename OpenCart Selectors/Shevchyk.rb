require 'selenium-webdriver'

class SiteElement
  def initialize(url)
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
  end
  def link
    @driver.find_element(:link_text, 'MacBook')
  end
  def image
    @driver.find_element(:css, "[alt=MacBook]")
  end
  def sliderButton
    @driver.find_element(:css, '#slideshow0  i.fa.fa-chevron-right.fa-5x')
  end
  def login_username
    @driver.find_element(:id, 'input-email').send_keys("askdasd")
  end
  def login_password
    @driver.find_element(:id, 'input-password').send_keys("12312")
  end
  def submit_button
    @driver.find_element(:css, "input[value='Login']")
  end
  def checkMessage
    @driver.find_element(:css, '.alert.alert-danger')
  end
  def checkAddToCart
    @driver.find_element(:css, ".product-layout:first-child button:first-child")
  end

end

browser = SiteElement.new("http://oppencart.herokuapp.com/index.php?route=account/login")
browser.login_username
browser.login_password
browser.submit_button.click
p browser.checkMessage.text



sleep 5
