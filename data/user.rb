class User
  attr_reader :firstname, :lastname, :email, :phoneNumber, \
    :fax, :company, :addressFirst, :addressSecond, \
    :city, :postCode, :country, :region, \
    :password, :subscribe

  def initialize
    @firstname=firstname;
    @lastname=lastname;
    @email=email;
    @phoneNumber=phoneNumber;
    @fax=fax;                     # optional
    @company=company;             # optional
    @addressFirst=addressFirst;
    @addressSecond=addressSecond; # optional
    @city=city;
    @postCode=postCode;
    @country=country;
    @region=region;
    @password=password;
    @subscribe=subscribe;         # optional
  end

end
