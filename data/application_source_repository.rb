class ApplicationSourceRepository

  private_class_method :new
  
  def self.default
    chrome_heroku
    # firefox_heroku
  end
  
  def self.chrome_heroku
    ApplicationSource.new("chrome",
    "lib/chromedriver.exe", 10,
    "http://server7.pp.ua",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout",
    "http://server7.pp.ua/index.php?route=product/category&path=25_28")

  end

  def self.firefox_heroku
    ApplicationSource.new("firefox",
    "lib/geckodriver.exe", 10,
    "http://server7.pp.ua",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout",
    "http://server7.pp.ua/index.php?route=product/category&path=25_28")
  end

end
