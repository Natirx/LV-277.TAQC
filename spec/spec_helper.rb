require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'allure-rspec'
require 'pathname'
require_relative '../pages/application.rb'

require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../tools/price_utils.rb'
require_relative '../tools/logger_wrapper'

RSpec.configure do |config|

  config.include AllureRSpec::Adaptor

  $data_provider_product_name = [
      [ProductRepository.MacBook.name,4],
      [ProductRepository.IPhone.name,5]
  ]
  $data_provider_product_currency = [
      [ProductRepository.MacBook.name, ProductRepository.MacBook.price_no_vat["USD"].to_f],
      [ProductRepository.IPhone.name, (ProductRepository.MacBook.price_no_vat["USD"].to_f + ProductRepository.IPhone.price_no_vat["USD"].to_f)]
  ]
  $data_provider_smoke_test=['Your shopping cart is empty!']

  config.before(:all) do
    Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  $log = LoggerWrapper.logger

  config.after(:all) do
    Application.remove
  end

  AllureRSpec.configure do |c|
    #c.output_dir = "/whatever/you/like" # default: gen/allure-results
    c.clean_dir = true # clean the output directory first? (default: true)
    c.logging_level = Logger::DEBUG # logging level (default: DEBUG)
  end

end
