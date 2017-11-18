# frozen_string_literal: true

require 'pry'
require_relative 'calc_helps'

module TasksCalculation
  def self.task_182(sequence_numbers)
    result_sequence = CalcHelps.get_numbers_devided_by_five_and_not_seven(sequence_numbers)
    {
      sequence_numbers: sequence_numbers,
      sequence_sum: result_sequence.inject(0, :+),
      sequence_count: result_sequence.length
    }
  end

  def self.task_323(natural_number)
    result_sequence = (1..natural_number).find_all do |el|
      (CalcHelps.get_devides_sequence(el) & CalcHelps.get_devides_sequence(natural_number)).max == 1
    end
    { sequence_numbers: result_sequence }
  end

  def self.task_560(_first_end_numbers)
    result_sequence = []
    (_first_end_numbers[0].._first_end_numbers[1] - 1).each do |i|
      (i + 1.._first_end_numbers[1]).each do |j|
        sum_devides_by_i = Array(CalcHelps.get_devides_sequence(i).first(CalcHelps.get_devides_sequence(i).size - 1)).inject(0, :+)
        sum_devides_by_j = Array(CalcHelps.get_devides_sequence(j).first(CalcHelps.get_devides_sequence(j).size - 1)).inject(0, :+)
        result_sequence << [i, j] if (sum_devides_by_i == j) && (sum_devides_by_j == i)
      end
    end
    { sequence_numbers: result_sequence }
  end
end
