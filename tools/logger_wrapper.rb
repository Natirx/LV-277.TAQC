require 'log4r'
require 'log4r/yamlconfigurator'
require 'log4r/outputter/datefileoutputter'
require 'log4r/outputter/rollingfileoutputter'

module LoggerWrapper
  include Log4r

  LOG4R_CONFIGURATION_DATA_PATH = 'data/log4r.yaml'

  def self.logger
    return @log unless @log.nil?
    YamlConfigurator.load_yaml_file(LOG4R_CONFIGURATION_DATA_PATH)
    @log = Logger['MainLogger']
  end

end