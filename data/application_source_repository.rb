class ApplicationSourceRepository

  private_class_method :new
  
  def self.default
    chrome_heroku
  end
  
  def self.chrome_heroku
    ApplicationSource.new("chrome",
    # TODO Change path to chromedriver.exe   
    "lib/chromedriver.exe", 10,
    "http://oppencart.herokuapp.com/",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout")
  end

  def self.firefox_heroku
    ApplicationSource.new("firefox",
    # TODO Change path to geckodriver.exe
    "lib/geckodriver.exe", 10,
    "http://oppencart.herokuapp.com/",
    "http://oppencart.herokuapp.com/index.php?route=account/login",
    "http://oppencart.herokuapp.com/index.php?route=account/logout",
    "http://oppencart.herokuapp.com/admin/",
    "http://oppencart.herokuapp.com/admin/index.php?route=common/logout")
  end

end
