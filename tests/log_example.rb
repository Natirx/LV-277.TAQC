require 'rubygems'
require 'logging'

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
