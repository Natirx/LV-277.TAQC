require 'rubygems'
require 'logging'
require 'yaml'
require 'pathname'

# Dir.chdir(File.dirname(__FILE__))
puts "from YAML ..."
#puts Dir.pwd

config_options = YAML.load_file("../config/example.yaml")
#config_options = { 'source_and_target_cols_map' =>
# [  { 'com_id' => 'community_id',
#    'report_dt' => 'note_date',
#    'sitesection' => 'site_section',
#    'visitor_cnt' => 'visitors',
#    'visit_cnt' => 'visits',
#    'view_cnt' => 'views',
#    'new_visitor_cnt' => 'new_visitors' }
#  ]}

  config_options['source_and_target_cols_map'][0].each do |key,value|
  puts "key= #{key},  value= #{value}"
end
 
puts "from LIST ..."
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
