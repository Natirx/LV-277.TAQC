require 'rubygems'
require 'figaro'

class ApplicationSourceRepository

  private_class_method :new

  private

  def self.init_db_credentials()
    @@db_host = Figaro.env.db_host
    @@db_username = Figaro.env.db_username
    @@db_password = Figaro.env.db_password
    @@db_database = Figaro.env.db_database
    @@db_port = Figaro.env.db_port
  end

  public

  def self.default
    chrome_heroku
  end
  
  def self.chrome_heroku
    init_db_credentials()
    ApplicationSource.new("chrome",
    "lib/chromedriver.exe", 10,
    "http://oppencart.herokuapp.com/",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout",
     @@db_host, @@db_username, @@db_password, @@db_database, @@db_port)
  end

  def self.firefox_heroku
    init_db_credentials()
    ApplicationSource.new("firefox",
    "lib/geckodriver.exe", 10,
    "http://oppencart.herokuapp.com/",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout",
    @@db_host, @@db_username, @@db_password, @@db_database, @@db_port)
  end

end
