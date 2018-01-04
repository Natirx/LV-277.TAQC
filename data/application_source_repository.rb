class ApplicationSourceRepository

  private_class_method :new

  def self.default
    chrome_heroku
  end

  def self.chrome_heroku
    ApplicationSource.new("chrome",
                          "lib/chromedriver.exe", 10,
                          "http://server7.pp.ua",
                          "http://server7.pp.ua/index.php?route=account/login",
                          "http://server7.pp.ua/index.php?route=account/logout",
                          "http://server7.pp.ua/admin/",
                          "http://server7.pp.ua/admin/index.php?route=common/logout")
                          # "http://openncart.herokuapp.com/",
                          # "http://openncart.herokuapp.com/index.php?route=account/login",
                          # "http://openncart.herokuapp.com/index.php?route=account/logout",
                          # "http://openncart.herokuapp.com/admin/",
                          # "http://openncart.herokuapp.com/admin/index.php?route=common/logout")
  end

  def self.firefox_heroku
    ApplicationSource.new("firefox",
                          "lib/geckodriver.exe", 10,
                          "http://openncart.herokuapp.com/",
                          "http://openncart.herokuapp.com/index.php?route=account/login",
                          "http://openncart.herokuapp.com/index.php?route=account/logout",
                          "http://openncart.herokuapp.com/admin/",
                          "http://openncart.herokuapp.com/admin/index.php?route=common/logout")
  end

end
