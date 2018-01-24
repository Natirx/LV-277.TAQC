require 'rubygems'
require 'selenium-webdriver'

require_relative '../../data/search_repository.rb'
require_relative '../../pages/application'
require_relative '../../pages/user/search_component/search_component_business'
require_relative '../../pages/user/search_page/search_page_business'


Application.get(ApplicationSourceRepository.chrome_heroku)
$searching_value = SearchRepository.search_value_mac.searchvalue

Given(/^We navigate to the homepage$/) do
  Application.get.load_url
end

When(/^We search for the word mac$/) do
    $search_text = Application.get.load_search_page_business
            .input_search_text(SearchRepository.search_value_mac.searchvalue)
            .search_value_text
end

Then(/^The results for the search will be displayed$/) do
  begin
    expect($search_text).to eq($searching_value)
  end
end

