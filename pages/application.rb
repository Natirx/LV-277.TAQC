require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../tools/browser_wrapper.rb'
require_relative '../pages/user/search_component/search_component_business.rb'

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

  def self.remove()
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

  def load_url
    browser.open_url(application_source.baseUrl)
  end

  def load_search_page_business
    SearchComponentBusiness.new()
  end

  def load_product_search_page_component
    browser.open_url(application_source.baseUrl)
    SearchComponentBusiness.new()
  end

  def load_header_menu_component
    browser.open_url(application_source.baseUrl)
    HeaderMenuComponent.new(browser.driver)
  end

  def load_product_page
    browser.open_url(application_source.productPageUrl)
    ProductPage.new(browser.driver)
  end

  def load_left_bar_component
    browser.open_url(application_source.productPageUrl)
    LeftBarComponent.new(browser.driver)
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
