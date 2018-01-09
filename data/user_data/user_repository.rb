require_relative 'user.rb'
require_relative '../../tools/parse_data.rb'
require 'pathname'

class UserRepository

  private_class_method :new

  TEST_USERS_DATA_PATH = 'data/user_data/user_data.yaml'.freeze


  def self.all_valid_fields
    assign_user_data_properties('all_valid_fields')
  end

  def self.short_valid_name_field
    assign_user_data_properties('short_valid_name_field')
  end

  def self.long_valid_name_field
    assign_user_data_properties('long_valid_name_field')
  end

  def self.empty_name_field
    assign_user_data_properties('empty_name_field')
  end

  def self.short_invalid_name_field
    assign_user_data_properties('short_invalid_name_field')
  end

  def self.long_invalid_name_field
    assign_user_data_properties('long_invalid_name_field')
  end



  def self.short_invalid_text_field
    assign_user_data_properties('short_invalid_text_field')
  end

  def self.short_valid_text_field
    assign_user_data_properties('short_valid_text_field')
  end

  def self.long_valid_text_field
    assign_user_data_properties('long_valid_text_field')
  end

  def self.empty_text_field
    assign_user_data_properties('empty_text_field')
  end

  def self.all_empty_fields_with_rating
    assign_user_data_properties('all_empty_fields_with_rating')
  end

  def self.all_empty_fields_without_rating
    assign_user_data_properties('all_empty_fields_without_rating')
  end

  def self.all_valid_fields_without_rating
    assign_user_data_properties('all_valid_fields_without_rating')
  end

  def self.assign_user_data_properties(_yaml_data_task)
    user_data = User.new
    test_user_data(_yaml_data_task).each do |key, value|
      user_data.send :"#{key.to_s}=", value.to_s
    end
    user_data
  end

  def self.test_user_data(_yaml_data_id)
    ParseData.parsed_yaml_file_data(TEST_USERS_DATA_PATH)[_yaml_data_id]
  end

end
