# frozen_string_literal: true

require_relative '../../spec/spec_helper'

describe TasksCalculation do
  before(:all) do
    $logger.info 'TaskCalculation spec test started'
  end

  context 'Abramov task 182 positive and negative tests group' do
    it 'should get Abramov task 182 positive result' do
      expect(TasksCalculation.task_182($task_182_test_data[:positive])[:sequence_sum]).to eql($task_182_expected_results[:sum])
      expect(TasksCalculation.task_182($task_182_test_data[:positive])[:sequence_count]).to eql($task_182_expected_results[:count])
    end

    it 'should get Abramov task 182  negative result (error)' do
      expect { TasksCalculation.task_182($task_182_test_data[:negative]) }.to raise_error(NoMethodError)
    end
  end

  context 'Abramov task 323 positive and negative tests group' do
    it 'should get Abramov task 323 positive result' do
      expect(TasksCalculation.task_323($task_323_test_data[:positive])[:sequence_numbers]).to eql($task_323_expected_results[:positive])
    end

    it 'should get Abramov task 323 negative result (empty result sequence)' do
      expect(TasksCalculation.task_323($task_323_test_data[:negative])[:sequence_numbers].size).to eq($task_323_expected_results[:negative])
    end
  end

  context 'Abramov task 560 positive and negative tests group' do
    it 'should get Abramov task 560 positive result' do
      expect(TasksCalculation.task_560($task_560_test_data[:positive])[:sequence_numbers]).to eql($task_560_expected_results)
    end

    it 'should get Abramov task 323 negative result (empty result sequence)' do
      expect { TasksCalculation.task_560($task_560_test_data[:negative]) }.to raise_error(ArgumentError)
    end
  end

  after(:all) do
    $logger.info 'TaskCalculation spec test completed'
  end
end
