# frozen_string_literal: true

require '../task560/calculation_task560'
require '../task323/calculation_task323'
require '../task182/calculation_task182'

class ResultsData
  def initialize;
  end

  def getResults
    continue = 'y'
    while continue == 'y' || continue == 'Y'
      puts '|==================================================|'
      puts '|                     MENU                         |'
      puts '|==================================================|'
      puts '|a). Find the sum and the number of those members  |'
      puts '|    of this sequence, which are divided by 5 and  |'
      puts '|    do not divide by 7.                           |'
      puts '|b). get all natural numbers that are smaller for  |'
      puts '|    the number n and are relatively prime to it.  |'
      puts '|c). Find all pairs of friendly numbers lying in   |'
      puts '|    the range from 200 to 300.                    |'
      puts '|==================================================|'
      puts 'Enter your option:'
      option = gets.chomp.downcase
      case option
        when 'a'
          task182 = CalculationTask182.new
          task182.getTask183Result
        when 'b'
          task323 = CalculationTask323.new
          task323.getTask323Result
        when 'c'
          task560 = CalculationTask560.new
          task560.getTask560Result
        else
          puts 'Incorrect option!'
      end
      puts 'If you want to continue enter \'y\' else enter any other for exit:'
      continue = gets.chomp.downcase
    end
    puts 'Bye, bye;)'
  end
end
