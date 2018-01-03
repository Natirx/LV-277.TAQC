require 'rubygems'
require 'mysql2'
require 'figaro'

begin
  #con = Mysql2.connect('localhost', 'db277', 'db277', 'lv277')
  ###con = Mysql2::Client.new(:host=>'localhost', :username=>'db277', :password=>'db277', :database=>'lv277')
  ##con = Mysql2::Client.new(:host=>'77.120.103.50', :username=>'p', :password=>'B', :database=>'pekelis_db', :port=>'3310')
  #
  #db_host=ENV['DB_HOST']
  #db_username=ENV['DB_USERNAME']
  #db_password=ENV['DB_PASSWORD']
  #db_database=ENV['DB_DATABASE']
  #db_port=ENV['DB_PORT']
  #
  # Read data from /config/application.yml
  db_host=Figaro.env.db_host
  db_username=Figaro.env.db_username
  db_password=Figaro.env.db_password
  db_database=Figaro.env.db_database
  db_port=Figaro.env.db_port
  #
  ###con = Mysql2::Client.new(:host=>'77.120.103.50', :username=>'p1e1k1e1l1is_usr', :password=>'B161y101N171i5', :database=>'pekelis_db', :port=>'3310')
  con = Mysql2::Client.new(:host=>db_host, :username=>db_username, :password=>db_password, :database=>db_database, :port=>db_port)
  #
  #DB_HOST=77.120.103.50
  #DB_USERNAME=p1e1k1e1l1i1s_usr
  #DB_PASSWORD=B161y101N171i15
  #DB_DATABASE=p1e1k1e1l1i1s_db
  #DB_PORT=3310
  #
  #puts con.get_server_info
  #rs = con.query 'SELECT VERSION()'
  #puts rs.fetch_row
  #
  #con.query 'use lv277;'
  ###rs = con.query 'SELECT * FROM MyUsers;'
  rs = con.query 'select * from oc_customer_login;'
  ###rs = con.query 'select * from oc_customer;'
  ##rs.each do |row|
  ##  puts row
  ##end
  ##print rs.first.keys
  ##puts
  rs.each do |row|
    row.each do |key,value|
      puts key.to_s + ":\t " + value.to_s 
    end
    #row.each do |key,value|
    #  print value.to_s + " "
    #end
    puts
  end
  #
 
rescue Mysql2::Error => e
  puts e.errno
  puts e.error
ensure
  con.close if con
end
