require 'selenium-webdriver'

require_relative '../data/application_source_repository.rb'
require_relative '../data/currency.rb'
require_relative '../data/currency_repository.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../pages/application.rb'
require_relative '../pages/user/home_page.rb'

RSpec.configure do |config|

  $data_provider_currency = [
      [ProductRepository.MacBook.name, ProductRepository.MacBook.prices["USD"].to_f],
      [ProductRepository.IPhone.name, (ProductRepository.MacBook.prices["USD"].to_f + ProductRepository.IPhone.prices["USD"].to_f)]
  ]

  config.before(:all) do
    #Application.get(ApplicationSourceRepository.chrome_heroku)
    Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  config.after(:all) do
    Application.remove
  end

end
