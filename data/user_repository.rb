class UserRepository

  private_class_method :new
  
  def self.default
    customer_test
  end
  
  def self.user_test
    User.new("admin", "Adminovuch", "test@gmail.com", "939544238", "939544238",
      "company", "Бандери", "17",
      "Новояворівськ", "81053", "Ukraine", "L'vivs'ka Oblast'", "qwerty", true)
  end

  def self.user_new
    User.new("admin1", "Adminovuch1", "test1@gmail.com", "939544238", "939544238",
      "company", "Бандери", "17",
      "Новояворівськ", "81053", "Ukraine", "L'vivs'ka Oblast'", "qwerty", true)
  end

  def self.admin_exist
    # Read from file, DB. etc.
    User.new("admin1", "Adminovuch1", "test1@gmail.com", "939544238", "939544238",
      "company", "Бандери", "17",
      "Новояворівськ", "81053", "Ukraine", "L'vivs'ka Oblast'", "qwerty", true)
  end
  
end
