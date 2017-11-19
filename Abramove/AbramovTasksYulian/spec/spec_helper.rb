# frozen_string_literal: true

require 'allure-rspec'
require 'pry'
require 'rspec'
require_relative '../config_data'
require_relative '../tasks_calculation'

RSpec.configure do |config|
  config.include AllureRSpec::Adaptor
  $logger = ConfigData.logger

  $task_182_test_data = {
    positive: [50, 1, 70],
    negative: 'string data'
  }
  $task_182_expected_results = {
    sum: 50,
    count: 1
  }

  $task_323_test_data = {
    positive: 10,
    negative: -10
  }
  $task_323_expected_results = {
    positive: [1, 3, 7, 9],
    negative: 0
  }

  $task_560_test_data = {
      positive: [200, 300],
      negative: [-30, 300]
  }
  $task_560_expected_results = [[220, 284]]

end
