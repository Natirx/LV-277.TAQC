class ApplicationSourceRepository

  private_class_method :new

  def self.default
    firefox_heroku
  end

  def self.chrome_heroku
    ApplicationSource.new('chrome',
                          'lib/chromedriver.exe', 10,
                          'http://oppencart.herokuapp.com/',
                          'http://oppencart.herokuapp.com/index.php?route=account/login',
                          'http://oppencart.herokuapp.com/index.php?route=account/logout',
                          'http://oppencart.herokuapp.com/admin/',
                          'http://oppencart.herokuapp.com/admin/index.php?route=common/logout',
                          'http://oppencart.herokuapp.com/index.php?route=account/register')
  end

  def self.firefox_heroku
    ApplicationSource.new('firefox',
                          'lib/geckodriver', 10,
                          'http://oppencart.herokuapp.com/',
                          'http://oppencart.herokuapp.com/index.php?route=account/login',
                          'http://oppencart.herokuapp.com/index.php?route=account/logout',
                          'http://oppencart.herokuapp.com/admin/',
                          'http://oppencart.herokuapp.com/admin/index.php?route=common/logout',
                          'http://oppencart.herokuapp.com/index.php?route=account/register')
  end

end
