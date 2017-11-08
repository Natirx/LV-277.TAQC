# frozen_string_literal: true

module Helper
  def self.isNaturalNumber(data)
    if (data.to_f.to_s.split('.').last.to_i != 0) || !is_number?(data) || (data.to_i < 0)
      raise "Invalid data entered: #{data.inspect}"
    end
  end

  def self.is_number?(string)
    true if Float(string)
  rescue
    false
  end
end
