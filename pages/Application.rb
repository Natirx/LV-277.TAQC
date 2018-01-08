require_relative 'user/header_component/header_component.rb'
require_relative 'user/header_component/header_component_bl.rb'
require_relative 'user/header_component/header_component_atomic.rb'
require_relative 'user/product_page/product_page.rb'
require_relative 'user/product_page/product_page_bl.rb'
require_relative 'user/product_page/product_page_atomic.rb'
require_relative 'user/product_page_info/product_info_page_bl.rb'
require_relative 'user/product_page_info/product_info_page_atomic.rb'
require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../tools/Browser_wrapper.rb'


class Application

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
    puts browser.driver.inspect
    puts application_source.baseUrl
  end

  def load_home_page
    p  application_source.baseUrl
    browser.open_url(application_source.baseUrl)
    HeaderComponentBusiness.new(HeaderComponentAtomic.new(browser.driver))
  end


end
