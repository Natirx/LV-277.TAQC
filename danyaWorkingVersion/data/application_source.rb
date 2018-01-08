class ApplicationSource
  attr_reader :browserName, :driverPath, :implicitWaitTimeOut, \
    :baseUrl, :userLoginUrl, :userLogoutUrl, \
    :adminLoginUrl, :adminLogoutUrl, :productPageUrl
  
  def initialize(browserName, driverPath, implicitWaitTimeOut, \
    baseUrl, userLoginUrl, userLogoutUrl, \
    adminLoginUrl, adminLogoutUrl, productPageUrl)
    @browserName = browserName
    @driverPath = driverPath
    @implicitWaitTimeOut = implicitWaitTimeOut
    @baseUrl = baseUrl
    @userLoginUrl = userLoginUrl
    @userLogoutUrl = userLogoutUrl
    @adminLoginUrl = adminLoginUrl
    @adminLogoutUrl = adminLogoutUrl
    @productPageUrl = productPageUrl
  end

end
