# frozen_string_literal: true

require_relative 'calc_helps'
require_relative 'config_data'
require 'pry'

module InputOutput
  def self.input_task_182
    data = input_natural_number('182', 'natural_number')
    sequence_numbers = Array.new(data) { rand(1...100).to_i }
  end

  def self.input_task_323
    input_natural_number('323', 'natural_number')
  end

  def self.input_task_560
    task_data = ConfigData.config_data('560')
    entered_data = []
    task_data['input_data'].each do |_key, _value|
      entered_data << input_natural_number('560', _key)
    end
    entered_data
  end

  def self.input_natural_number(_yaml_task_data_id, input_data_key)
    task_data = ConfigData.config_data(_yaml_task_data_id)
    puts task_data['input_data'][input_data_key]
    data = CalcHelps.isNaturalNumber(gets.chomp).to_i
  end

  def self.output_data(_yaml_task_data_id, _calculated_data)
    task_data = ConfigData.config_data(_yaml_task_data_id)
    task_data['output_data'].each do |key, _value|
      puts _value + _calculated_data[key.to_sym].to_s
    end
    # binding.pry
  end

  def self.print_task_description_by_id(_yaml_task_data_id)
    puts ConfigData.config_data(_yaml_task_data_id)['task_description']
  end
end
