require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../tools/browser_wrapper.rb'
require_relative '../pages/user/register_page/registration_page'
require_relative '../pages/user/register_page/registration_atomic_page'
require_relative '../pages/user/register_page/registration_business_page'

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

  def self.get(application_source = nil)
    if @@instance.nil?
      if application_source.nil?
        application_source = ApplicationSourceRepository.default
      end
      @@instance = new(application_source)
      @@instance.init(application_source)
    end
    return @@instance
  end

  def self.remove
    unless @@instance.nil?
      @@instance.browser.quit
      @@instance = nil
    end
  end

  def init(application_source)
    @browser = BrowserWrapper.new(application_source)
  end

  def load_register_page
    browser.open_url(application_source.user_register_url)
    RegistrationBusinessPage.new(RegistrationAtomicPage.new(browser.driver))
  end

  ###########################
  def load_home_page
    browser.open_url(application_source.baseUrl)
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
