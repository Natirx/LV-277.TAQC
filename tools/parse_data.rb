require 'yaml'
require_relative 'logger_wrapper'
require_relative '../data/user_data/user_data.yaml'

module ParseData

  def self.parsed_yaml_file_data(../data/user_data/user_data.yaml)
    YAML.load_file(File.open(../data/user_data/user_data.yaml))
  rescue ArgumentError => e
    LoggerWrapper.logger.info "Could not parse YAML: #{e.message}"
  end

end
