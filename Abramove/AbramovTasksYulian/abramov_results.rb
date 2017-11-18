# frozen_string_literal: true

require_relative 'input_output'
require_relative 'tasks_calculation'
require_relative 'config_data'
require 'pry'

class AbramovResults
  def getResults
    continue = 'y'
    @config_data = ConfigData.config_data('0')
    while continue == 'y'
      puts @config_data['menu_border']
      puts @config_data['menu_header']
      puts @config_data['menu_border']
      puts @config_data['menu_context']
      puts @config_data['menu_border']
      puts @config_data['enter_message']
      option = gets.chomp
      case option
      when '182'
        run_task(option, InputOutput.method(:input_task_182), TasksCalculation.method(:task_182))
      when '323'
        run_task(option, InputOutput.method(:input_task_323), TasksCalculation.method(:task_323))
      when '560'
        run_task(option,InputOutput.method(:input_task_560),TasksCalculation.method(:task_560))
      else
        ConfigData.logger.info @config_data['incorrect_option_message']
      end
      puts @config_data['choose_another_option_message']
      continue = gets.chomp.downcase
    end
    ConfigData.logger.info @config_data['app_exit_message']
  end

  def run_task(option, _callback_input, _callback_calculate)
    InputOutput.print_task_description_by_id(option.to_i)
    begin
      entered_data = _callback_input.call
      calculated_data = _callback_calculate.call(entered_data)
      InputOutput.output_data(option.to_i, calculated_data)
    rescue StandardError => e
      ConfigData.logger.warn @config_data['invalid_data_entered_message']
      ConfigData.logger.error e.message
    end
  end
end

abramovResults = AbramovResults.new
abramovResults.getResults

