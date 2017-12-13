require 'rubygems'
require 'log4r'
require 'log4r/configurator'

include Log4r

Log4r::Configurator.load_xml_file('log4r.xml');
#Log4r::Configurator.load_xml_file(File.join(AGENT_ROOT, 'log4r.xml'))

class Log4rExample
  def work
    @log = Logger["MainLogger"]
    @log.error("my_error")
    @log.warn("my_warning")
    @log.info("my_info")
    @log.debug("my_debug")
  end
end

inst = Log4rExample.new
inst.work
