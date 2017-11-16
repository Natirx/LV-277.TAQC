# frozen_string_literal: true

require 'pry'

module CalcHelps
  def self.isNaturalNumber(data)
    if (data.to_f.to_s.split('.').last.to_i != 0) || !Float(data) || data.to_i.negative?
      raise "Invalid data entered: #{data.inspect}"
    end
    data
  end

  def self.get_devides_sequence(number)
    (1..number).select { |el| (number % el).zero? }
  end

  def self.get_numbers_devided_by_five_and_not_seven(sequence_numbers)
    sequence_numbers.select { |el| (el % 5).zero? && !(el % 7).zero? }
  end
end
