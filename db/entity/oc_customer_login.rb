class OcCustomerLogin
  attr_accessor :customerLoginId, :email, :ip, :total, :dateAdded, :dateModified

    INSERT = "INSERT INTO oc_customer_login (email, ip, total, date_added, date_modified) VALUES ('%s', '%s', %s, '%s', '%s');"
    GET_BY_ID = "SELECT customer_login_id, email, ip, total, date_added, date_modified FROM oc_customer_login WHERE customer_login_id = %s;"
    GET_BY_FIELD = "SELECT customer_login_id, email, ip, total, date_added, date_modified FROM oc_customer_login WHERE %s = '%s';"
    GET_ALL = "SELECT customer_login_id, email, ip, total, date_added, date_modified FROM oc_customer_login;"
    UPDATE_BY_FIELD = "UPDATE oc_customer_login SET %s = '%s' WHERE %s = '%s';"
    DELETE_BY_ID = "DELETE FROM oc_customer_login WHERE customer_login_id = %s;"
    DELETE_BY_FIELD = "DELETE FROM oc_customer_login WHERE %s = '%s';"

    def initialize()
    @customerLoginId=-1;
    @email='';
    @ip='';
    @total=-1;
    @dateAdded='';
    @dateModified='';
  end

end
