require_relative 'login.rb'
class LoginRepository

  private_class_method :new

  def self.login_valid
    Login.new("triko2020@gmail.com", "qweasdzxc")
  end


end
