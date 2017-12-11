require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

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


RSpec.configure do |config|


  config.before(:all) do
    Application.get(ApplicationSourceRepository.chrome_heroku)
    #Application.get(ApplicationSourceRepository.firefox_heroku())
  end

  config.after(:all) do
    Application.remove
  end

end
