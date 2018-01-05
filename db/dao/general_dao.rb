#require_relative '../entity/oc_customer_login.rb'
require_relative '../../pages/application.rb'

class GeneralDao
  attr_accessor :entity_class, :connection
  
  def initialize(entity_name)
    @entity_class = Kernel.const_get(entity_name)
    @connection = Application.get.connection_manager.get_connection
  end

  private

  def get_table_data(result_set)
    result = []
    result_set.each do |row|
      line = []
      row.each do |key,value|
        line = line + [value.to_s]
      end
      result = result + [line]
    end
    result
  end

  public

  def get_fields(entity)
    # TODO Return list of entity fields
    raise "TODO method get_fields not realised"
    nil
  end

  def get_by_id(id)
    #puts @entity_class::INSERT
    query_string = entity_class::GET_BY_ID % [id]
    result_set = connection.query query_string
    get_table_data(result_set)
  end

  def get_by_field_name(field_name, text)
    query_string = entity_class::GET_BY_FIELD % [field_name, text]
    result_set = connection.query query_string
    get_table_data(result_set)
  end

  def getAll()
    result_set = connection.query entity_class::GET_ALL
    get_table_data(result_set)
  end

  def insert(entity)
    query_string = entity_class::INSERT % get_fields(entity)[1..-1]
    connection.query query_string
    nil
  end

  def update_by_field_name(field_name, text, field_condition, text_condition)
    query_string = entity_class::UPDATE_BY_FIELD % [field_name, text, field_condition, text_condition]
    connection.query query_string
    nil
  end

  def delete_by_id(id)
    query_string = entity_class::DELETE_BY_ID % [id]
    connection.query query_string
    nil
  end

  def delete_by_field_name(field_condition, text_condition)
    query_string = entity_class::DELETE_BY_FIELD % [field_condition, text_condition]
    connection.query query_string
    nil
  end

  def delete(entity)
    delete_by_id(get_fields(entity)[0])
  end

end

#p "START"
#d = GeneralDao.new('OcCustomerLogin')
#d.get_by_id(1)
