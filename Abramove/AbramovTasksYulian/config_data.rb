# frozen_string_literal: true

require 'log4r'
require 'log4r/yamlconfigurator'
require 'log4r/outputter/datefileoutputter'
require 'log4r/outputter/rollingfileoutputter'
require 'log4r/outputter/emailoutputter'
require 'yaml'
require 'pry'

module ConfigData
  include Log4r

  def self.logger
    YamlConfigurator.load_yaml_file('src/log4r.yaml')
    log = Logger['MainLogger']
    log
  end

  def self.config_data(_yaml_task_data_id)
    @config_data = begin
      YAML.load_file(File.open('src/config.yaml'))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
    @config_data[_yaml_task_data_id.to_i]
  end
end
