class User


  attr_accessor :addressFirst, :region, :fax, :email, :subscribe, :lastname, :firstname, :company,
                :addressSecond, :country, :phoneNumber, :postCode, :password, :city, :policy

  def initialize()
    @firstname = ''
    @lastname = ''
    @email = email
    @phoneNumber = ''
    @fax = ''
    @company = ''
    @addressFirst = ''
    @addressSecond = ''
    @city = ''
    @postCode = ''
    @country = ''
    @region = ''
    @password = ''
    @subscribe = ''
    @policy = ''
  end

end
