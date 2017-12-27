require 'rubygems'
require 'mysql2'

begin
  #con = Mysql2.connect('localhost', 'db277', 'db277', 'lv277')
  ###con = Mysql2::Client.new(:host=>'localhost', :username=>'db277', :password=>'db277', :database=>'lv277')
  con = Mysql2::Client.new(:host=>'77.120.103.50', :username=>'p', :password=>'B', :database=>'pekelis_db', :port=>'3310')
  #puts con.get_server_info
  #rs = con.query 'SELECT VERSION()'
  #puts rs.fetch_row
  #
  #con.query 'use lv277;'
  ###rs = con.query 'SELECT * FROM MyUsers;'
  ###rs = con.query 'select * from oc_customer_login;'
  rs = con.query 'select * from oc_customer;'
  rs.each do |row|
    puts row
  end
rescue Mysql2::Error => e
  puts e.errno
  puts e.error
ensure
  con.close if con
end
