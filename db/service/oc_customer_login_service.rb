require 'rubygems'
require 'time'
require_relative '../dao/oc_customer_login_dao.rb'
#require_relative '../../pages/application.rb'

class OcCustomerLoginService

  def initialize()
    @ocCustomerLoginDao = OcCustomerLoginDao.new
  end

  def get_all_customer_logins()
    @ocCustomerLoginDao.getAll
  end

  # TODO Change email to User
  def get_data_by_email(email)
    @ocCustomerLoginDao.get_by_field_name('email', email)
  end

  # TODO Change email to User
  def get_date_added_by_email(email)
    @ocCustomerLoginDao.get_by_field_name('email', email)[0][4]
  end

  # TODO Change email to User
  def get_date_modified_by_email(email)
    @ocCustomerLoginDao.get_by_field_name('email', email)[0][5]
  end

  # TODO Change email to User
  def get_total_by_email(email)
    @ocCustomerLoginDao.get_by_field_name('email', email)[0][3]
  end

  # TODO Change email to User
  def update_total_by_email(total_number, email)
      @ocCustomerLoginDao.update_by_field_name('total', total_number.to_s, 'email', email)
  end

  # TODO Change email to User
  def unlock_customer_login_by_email(email)
    time = (Time.now.getlocal.to_time - 3600).to_datetime.strftime("%Y_%m_%d_%H-%M-%S")
    @ocCustomerLoginDao.update_by_field_name('date_added', time, 'email', email)
    @ocCustomerLoginDao.update_by_field_name('date_modified', time, 'email', email)
  end

end
