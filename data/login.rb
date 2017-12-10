class Login
  attr_reader :email,:password

  def initialize(email, password)
    @email=email;
    @password=password;
  end
end
