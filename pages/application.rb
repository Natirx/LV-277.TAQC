require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../tools/browser_wrapper.rb'
require_relative 'user/shopping_cart_page/shopping_cart_atomic'
require_relative 'user/shopping_cart_page/shopping_cart_bussiness'
require_relative 'user/shopping_cart_page/shopping_cart_page'
require_relative 'user/login_page/login_atomic_page'
require_relative 'user/login_page/login_page'
require_relative 'user/login_page/login_business_page'

class Application
  # TODO for multithreading
  attr_reader :application_source, :browser

  private_class_method :new

  private

  @@instance = nil

  def initialize(application_source)
    @application_source = application_source
  end

  public

  #def self.get()
  #  self.get(nil)
  #end

  def self.get(application_source = nil)
    # print "\t***application_source = "
    # p application_source
    # print "\t***application instance = "
    # p @@instance
    #puts "\t***application_source = #{application_source}"
    #if !@@instance
    if @@instance.nil?
      #if !application_source
      if application_source.nil?
        application_source = ApplicationSourceRepository.default
        # puts "\t***application_source default"
      end
      #@@instance = Application.new(application_source) # Error for self
      @@instance = new(application_source)
      @@instance.init(application_source)
    end
    return @@instance
  end

  def self.remove
    if @@instance
      @@instance.browser.quit
      @@instance = nil
    end
  end

  def init(application_source)
    @browser = BrowserWrapper.new(application_source)
  end

  def load_home_page
    browser.open_url(application_source.baseUrl)
    MainPage.new(browser.driver)
  end


  def delete_cookiess
    browser.delete_cookies
    MainPage.new(browser.driver)
  end

  def login_user
    browser.open_url(application_source.userLoginUrl)
    # TODO change page
    MainPage.new(browser.driver)
  end

  def logout_user
    browser.open_url(application_source.userLogoutUrl)
    # TODO change page
    MainPage.new(browser.driver)
  end

  def login_admin
    browser.open_url(application_source.adminLoginUrl)
    # TODO change page
    MainPage.new(browser.driver)
  end

  def logout_admin
    browser.open_url(application_source.adminLogoutUrl)
    # TODO change page
    MainPage.new(browser.driver)
  end

end
