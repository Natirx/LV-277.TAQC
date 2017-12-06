class ApplicationSource
  attr_reader :browserName, :driverPath, :implicitWaitTimeOut,
              :baseUrl, :userLoginUrl, :userLogoutUrl,
              :adminLoginUrl, :adminLogoutUrl, :user_register_url

  def initialize(browserName, driverPath, implicitWaitTimeOut,
    baseUrl, userLoginUrl, userLogoutUrl,
    adminLoginUrl, adminLogoutUrl, user_register_url)
    @browserName = browserName
    @driverPath = driverPath
    @implicitWaitTimeOut = implicitWaitTimeOut
    @baseUrl = baseUrl
    @user_register_url = user_register_url
    @userLoginUrl = userLoginUrl
    @userLogoutUrl = userLogoutUrl
    @adminLoginUrl = adminLoginUrl
    @adminLogoutUrl = adminLogoutUrl
  end

end
