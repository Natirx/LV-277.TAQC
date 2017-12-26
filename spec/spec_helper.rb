

require 'rspec'
require 'allure-rspec'
# require 'parallel_tests'
require 'pathname'
require 'selenium-webdriver'
require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/main_page.rb'

RSpec.configure do |config|
  $data_provider_currency = [
      [ProductRepository.MacBook, CurrencyRepository.currency_dollar],
      [ProductRepository.iMac, CurrencyRepository.currency_dollar]
  ]

  config.include AllureRSpec::Adaptor

  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  AllureRSpec.configure do |c|
    c.output_dir = "reports"
    c.clean_dir = false
  end

  config.after(:all) do
    Application.remove
  end

end

# ParallelTests.first_process? ? FileUtils.rm_rf(AllureRSpec::Config.output_dir) : sleep(1)