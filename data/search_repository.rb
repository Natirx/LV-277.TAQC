require_relative 'search.rb'

class SearchRepository

  private_class_method :new

  def self.search_value_tilde
    Search.new("~")
  end

  def self.search_value_exclamation
    Search.new("!")
  end

  def self.search_value_at
    Search.new("@")
  end

  def self.search_value_rack
    Search.new("#")
  end

  def self.search_value_dollar
    Search.new("$")
  end

  def self.search_value_percent
    Search.new("%")
  end

  def self.search_value_carret
    Search.new("^")
  end

  def self.search_value_and
    Search.new("&")
  end

  def self.search_value_asterics
    Search.new("*")
  end

  def self.search_value_open
    Search.new("(")
  end

  def self.search_value_close
    Search.new(")")
  end

  def self.search_value_minus
    Search.new("-")
  end

  def self.search_value_plus
    Search.new("+")
  end

  def self.search_value_plus
    Search.new("mac")
  end


end