require 'rubygems'
require 'logging'

list = [0,1,2,3,4,5]
#puts list[1..5]
puts list[1..-1]

s_origin = "hello, %s.  Where is %s?"
s_update = s_origin % ["John", "Mary"]
puts s_update

print "logging #1:"  

#logger = Logging.logger(STDOUT)
logger = Logging.logger['log_example']

logger.add_appenders \
  Logging.appenders.stdout,
  Logging.appenders.file('example.log')
  
#logger.level = :warn
logger.level = :debug
#logger.datetime_format = "%Y-%m-%d %H:%M:%S"

logger.debug "this debug message will not be output by the logger"
logger.warn "this is your last warning"
