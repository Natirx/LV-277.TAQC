# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask182
  def initialize
    @countOfNumbers = 0
    @sumOfNumbers = 0
  end

  def getTask183Result
    puts 'Enter count numbers in sequence:'
    data = gets.chomp
    Helper.isNaturalNumber(data)
    @nNumber = data.to_i
    puts 'Sequence numbers:'
    (1..@nNumber).each do |_number|
      sequenceNumber = rand(100) + 1
      print("#{sequenceNumber} ")
      if ((sequenceNumber % 5) == 0) && ((sequenceNumber % 7) != 0)
        @sumOfNumbers += sequenceNumber
        @countOfNumbers += 1
      end
    end
    puts "\nSum of correct numbers from sequence = #{@sumOfNumbers}"
    puts "Count of correct numbers from sequence = #{@countOfNumbers}"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end

# calculationTask182 = CalculationTask182.new
# calculationTask182.getTask183Result
