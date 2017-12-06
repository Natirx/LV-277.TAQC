# frozen_string_literal: true

require_relative 'user'
require 'yaml'

class UserRepository
  private_class_method :new

  def self.default
    valid_user
  end

  def self.valid_user
    valid_user_data = User.new
    valid_user_data.firstname = get_data['invalid_user_credentials']['firstname ']
    valid_user_data.lastname = get_data['invalid_user_credentials']['lastname ']
    valid_user_data.email = get_data['invalid_user_credentials']['email']
    valid_user_data.phoneNumber = get_data['invalid_user_credentials']['phoneNumber']
    valid_user_data.company = get_data['invalid_user_credentials']['company']
    valid_user_data.addressFirst = get_data['invalid_user_credentials']['addressFirst']
    valid_user_data.city = get_data['invalid_user_credentials']['city']
    valid_user_data.postCode = get_data['invalid_user_credentials']['postCode']
    valid_user_data.region = get_data['invalid_user_credentials']['region']
    valid_user_data.country = get_data['invalid_user_credentials']['country']
    valid_user_data.password = get_data['invalid_user_credentials']['password']
    valid_user_data.policy = get_data['invalid_user_credentials']['policy']
    valid_user_data
  end

  def self.get_data
    YAML.load_file(File.open('data/users_data.yaml'))
  rescue ArgumentError => e
    puts "Could not parse YAML: #{e.message}"
  end
end
