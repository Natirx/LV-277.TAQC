require_relative '../pages/user/header_menu_comp/header_menu_business.rb'
require_relative '../pages/user/header_menu_comp/header_menu_atomic.rb'
require_relative '../pages/user/left_bar_comp/left_bar_business.rb'
require_relative '../pages/user/prod_page/product_page_business.rb'
require_relative '../pages/user/prod_page/product_page_atomic.rb'

require_relative '../pages/user/product_page.rb'
require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../tools/browser_wrapper.rb'


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
        puts "\t***application_source default"
      end
      #@@instance = Application.new(application_source) # Error for self
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

#############################################################
  def load_header_menu_component
    browser.open_url(application_source.baseUrl)
    # HeaderMenuBusiness.new(browser.driver)
    HeaderMenuBusiness.new()
  end

  # def load_header_menu_atomic
  #   browser.open_url(application_source.baseUrl)
  #   HeaderMenuAtomic.new(browser.driver)
  # end

  def load_product_page
    browser.open_url(application_source.productPageUrl)
    # ProductPageBusiness.new(ProductPageAtomic.new(browser.driver))
    ProductPageBusiness.new()
  end

  def load_product_page_atomic
    browser.open_url(application_source.productPageUrl)
    ProductPageAtomic.new(browser.driver)
  end

  def load_left_bar_component
    browser.open_url(application_source.productPageUrl)
    # LeftBarComponent.new(browser.driver)
    LeftBarAtomic.new(browser.driver)
  end

#############################################################
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
