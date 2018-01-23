require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'allure-rspec'
#require 'pathname'
require_relative '../data/application_source_repository.rb'
require_relative '../data/application_source.rb'
require_relative '../pages/Application.rb'
require_relative '../data/product.rb'
require_relative '../data/product_repository.rb'
require_relative '../data/message.rb'
require_relative '../data/message_repository.rb'
require_relative '../tools/log_wrapper.rb'
require_relative '../data/user_data/user_repository.rb'


RSpec.configure do |config|

  $data_provider_review_name_valid = [
    [ProductRepository.desktop_mac,  UserRepository.all_valid_fields, MessageRepository.success_mssg],
    [ProductRepository.desktop_mac, UserRepository.short_valid_name_field, MessageRepository.success_mssg],
    [ProductRepository.desktop_mac, UserRepository.long_valid_name_field, MessageRepository.success_mssg]

  ]

  $data_provider_review_name_invalid = [
    [ProductRepository.desktop_mac, UserRepository.empty_name_field, MessageRepository.name_danger_mssg],
    [ProductRepository.desktop_mac, UserRepository.short_invalid_name_field, MessageRepository.name_danger_mssg],
    [ProductRepository.desktop_mac, UserRepository.long_invalid_name_field, MessageRepository.name_danger_mssg]

  ]

  $data_provider_review_text_valid = [
    [ProductRepository.desktop_mac, UserRepository.all_valid_fields, MessageRepository.success_mssg],
    [ProductRepository.desktop_mac, UserRepository.short_valid_text_field, MessageRepository.success_mssg],
    [ProductRepository.desktop_mac, UserRepository.long_valid_text_field, MessageRepository.success_mssg]

  ]

  $data_provider_review_text_invalid = [
    [ProductRepository.desktop_mac, UserRepository.short_invalid_text_field, MessageRepository.text_danger_mssg],
    #[ProductRepository.desktop_mac, UserRepository.long_invalid_text_field, MessageRepository.text_danger_mssg],
    [ProductRepository.desktop_mac, UserRepository.empty_text_field, MessageRepository.text_danger_mssg]

  ]

  $data_provider_review_rating_invalid = [
    [ProductRepository.desktop_mac, UserRepository.all_valid_fields_without_rating, MessageRepository.rating_danger_mssg]

  ]

  $data_provider_review_rating_valid = [
    [ProductRepository.desktop_mac, UserRepository.all_empty_fields_with_rating, MessageRepository.rating_danger_mssg]
  ]


  config.before(:all) do
    Application.get(ApplicationSourceRepository.firefox_heroku)
  end

  $log = LoggerWrapper.logger
  config.include AllureRSpec::Adaptor

  config.after(:all) do
    Application.remove
  end


  AllureRSpec.configure do |config|
    config.output_dir = 'allure-results'
    config.logging_level = Logger::WARN
  end
end
