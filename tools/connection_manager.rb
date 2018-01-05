require 'rubygems'
require 'mysql2'
#require_relative '../entity/oc_customer_login.rb'
require_relative '../../pages/application.rb'

class ConnectionManager

  def initialize(application_source)
    @application_source = application_source;
    @connection = nil
  end

  def get_connection()
    begin
      @connection = Mysql2::Client.new(:host=>application_source.db_host,
                       :username=>application_source.db_username,
                       :password=>application_source.db_password,
                       :database=>application_source.db_database,
                       :port=>application_source.db_port)
    rescue Mysql2::Error => e
      # TODO logging
      # puts e.errno
      puts e.error
    end
  end

  def close_connection()
      @connection.close if @connection
  end

  # TODO
  #def beginTransaction()
  #def commitTransaction()
  #def rollbackTransaction()

end
