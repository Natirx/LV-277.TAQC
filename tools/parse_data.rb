require 'yaml'
require_relative 'log_wrapper'
require 'pathname'

module ParseData

  def self.parsed_yaml_file_data(path)
    YAML.load_file(File.open(path))
  rescue ArgumentError => e
    LoggerWrapper.logger.info "Could not parse YAML: #{e.message}"
  end

end
