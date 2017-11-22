class Main
  @@quantity = 0
  def initialize(driver)
    @driver = driver
  end

  def load (path = 'http://demo-opencart.ru')
    @driver.get path
  end

  def current_url
    @driver.current_url
  end

  def wait_until(second = 6)
    Selenium::WebDriver::Wait.new(timeout: second).until { yield }
  end

  def find locator
    begin
      wait_until {
        @driver.find_element(locator)
      }
    rescue Selenium::WebDriver::Error::TimeoutError
      wait_until {
        @driver.quit
      }
    end
  end

  def get_text locator
    find(locator).text
  end

  def click locator
    find(locator).click
  end

  def clear_ther_enter(text, locator)
    find(locator).clear
    find(locator).send_keys text
  end

  def submit locator
    find(locator).submit
  end

  def is_displayed?(locator)
    begin
      find(locator).displayed?
    rescue Selenium::WebDriver::Error::TimeoutError
      return true
      raise "Element not displayed"
    else
      return true
    end
  end
  def self.set_quantity_zero
    @@quantity =0
  end
  def add_to_quantity
    @@quantity += 1
  end
  def self.return_quantity
    @@quantity
  end




end
