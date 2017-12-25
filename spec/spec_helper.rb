require 'rubygems'
require 'rspec'
require 'allure-rspec'
require 'parallel_tests'
require 'pathname'
require 'selenium-webdriver'


require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/main_page.rb'
require_relative '../pages/user/guest_cart_page.rb'

RSpec.configure do |config|
  $data_provider_currency = [
    [ProductRepository.MacBook.name, "2", "860.00"],
    [ProductRepository.MacBook.name, "3", "1,290.00"]
  ]
  $data_provider_mackbook =  ProductRepository.MacBook.name

   config.include AllureRSpec::Adaptor


  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  config.after(:all) do
    Application.remove
  end
  config.after(:each) do
    Application.get.delete_cookiess

  end
  AllureRSpec.configure do |config|
    config.output_dir = "allure-report"
    config.logging_level = Logger::DEBUG
  end
end

ParallelTests.first_process? ? FileUtils.rm_rf(AllureRSpec::Config.output_dir) : sleep(1)
