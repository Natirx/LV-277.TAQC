class ApplicationSource
  attr_reader :browserName, :driverPath, :implicitWaitTimeOut, \
    :baseUrl, :userLoginUrl, :userLogoutUrl, \
    :adminLoginUrl, :adminLogoutUrl, \
    :db_host, :db_username, :db_password, :db_database, :db_port
  
  def initialize(browserName, driverPath, implicitWaitTimeOut, \
    baseUrl, userLoginUrl, userLogoutUrl, \
    adminLoginUrl, adminLogoutUrl, \
    db_host, db_username, db_password, db_database, db_port)
    @browserName = browserName
    @driverPath = driverPath
    @implicitWaitTimeOut = implicitWaitTimeOut
    @baseUrl = baseUrl
    @userLoginUrl = userLoginUrl
    @userLogoutUrl = userLogoutUrl
    @adminLoginUrl = adminLoginUrl
    @adminLogoutUrl = adminLogoutUrl
    @db_host = db_host
    @db_username = db_username
    @db_password = db_password
    @db_database = db_database
    @db_port = db_port
  end

end
