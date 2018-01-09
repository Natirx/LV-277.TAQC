require 'rubygems'
require 'rspec'
require 'allure-rspec'
require 'pathname'
require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/header_menu/header_menu_repository.rb'
require_relative '../pages/user/header_menu_comp/header_menu_atomic.rb'
require_relative '../pages/user/header_menu_comp/header_menu_business.rb'
require_relative '../pages/user/prod_page/product_page_atomic.rb'
require_relative '../pages/user/prod_page/product_page_business.rb'
require_relative '../pages/user/left_bar_comp/left_bar_atomic.rb'
require_relative '../pages/user/left_bar_comp/left_bar_business.rb'
require_relative '../pages/application.rb'
require_relative '../tools/logger_wrapper'

RSpec.configure do |config|

  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    # Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  $log = LoggerWrapper.logger
  config.include AllureRSpec::Adaptor

  config.after(:all) do
    Application.remove
  end

  AllureRSpec.configure do |c|
    c.output_dir = "reports"
    # c.clean_dir = false
    c.logging_level = Logger::DEBUG
  end

end