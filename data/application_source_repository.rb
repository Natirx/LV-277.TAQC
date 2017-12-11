
class ApplicationSourceRepository

  private_class_method :new

  def self.default
    firefox_heroku
  end


  def self.firefox_heroku
    ApplicationSource.new(
      "firefox",
      "/home/iryna/Desktop/Demo2/lib/geckodriver",
      10,
    "http://openncart.herokuapp.com/")

  end

end
