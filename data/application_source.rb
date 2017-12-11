class ApplicationSource

  attr_reader :browserName, :driverPath, :implicitWaitTimeOut, :baseUrl

  def initialize(browserName, driverPath, implicitWaitTimeOut,baseUrl)
    @browserName = browserName
    @driverPath = driverPath
    @implicitWaitTimeOut = implicitWaitTimeOut
    @baseUrl = baseUrl

  end

end
