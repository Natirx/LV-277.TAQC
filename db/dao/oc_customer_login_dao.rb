#require_relative '../entity/oc_customer_login.rb'
require_relative '../../pages/application.rb'

class OcCustomerLoginDao < GeneralDao

  def initialize()
    super('OcCustomerLogin')
  end

  def get_fields(entity)
    # TODO Return list of entity fields
    [entity.customerLoginId, entity.email, entity.ip, entity.total, entity.dateAdded, entity.dateModified]
  end

end
