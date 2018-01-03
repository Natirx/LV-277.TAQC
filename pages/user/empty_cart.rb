require_relative 'header_component.rb'

class EmptyCart < HeaderComponent
  EMPTY_CART_TEXT = {:css => ".dropdown-menu.pull-right"}

  def initialize driver
    @driver=driver
  end

  def message
    @driver.find_element EMPTY_CART_TEXT
  end

  def message_text
    message.text
  end

  # business logic

  def get_message
    message_text
  end

end