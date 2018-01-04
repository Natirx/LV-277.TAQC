require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'allure-rspec'
require 'pathname'

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
require_relative '../pages/user/product_search_page.rb'
require_relative '../pages/user/failure_search_page.rb'
require_relative '../pages/user/success_search_page.rb'
#require_relative '../tools/logger_wrapper'


RSpec.configure do |config|


  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  #$log = LoggerWrapper.logger
  config.include AllureRSpec::Adaptor

  AllureRSpec.configure do |config|
    config.output_dir = 'reports/allure/gen/allure-results'
    config.clean_dir = false
    config.logging_level = Logger::WARN
  end

  config.after(:all) do
    Application.remove
  end
end