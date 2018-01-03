require 'rubygems'
require 'log4r'
require 'log4r/yamlconfigurator'

include Log4r

Log4r::YamlConfigurator.load_yaml_file('log4r.yaml')

class Log4rExample
  def work
    #@log = Logger["Log4r"]
    @log = Logger["MainLogger"]
    @log.error("my_error12")
    @log.warn("my_warning")
    @log.info("my_info")
    @log.debug("my_debug")
  end
end

inst = Log4rExample.new
inst.work