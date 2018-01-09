require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'allure-rspec'
require 'pathname'
require 'parallel_tests'

require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../data/search_repository.rb'
require_relative '../data/search.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/main_page.rb'
require_relative '../pages/user/path_panel_component.rb'
require_relative '../pages/user/header_component.rb'
require_relative '../tools/logger_wrapper'
require_relative '../pages/user/search_component/search_component.rb'
require_relative '../pages/user/search_component/search_component_business.rb'
require_relative '../pages/user/search_page/search_page.rb'
require_relative '../pages/user/search_page/search_page_business.rb'



RSpec.configure do |config|

  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  $log = LoggerWrapper.logger
  config.include AllureRSpec::Adaptor

  AllureRSpec.configure do |config|
    config.output_dir = 'reports/'
    config.logging_level = Logger::DEBUG
  end

  config.after(:all) do
    Application.remove
  end
end
