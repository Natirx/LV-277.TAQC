# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask182

  def getTask183Result
    @countOfNumbers = 0
    @sumOfNumbers = 0
    puts 'Enter count numbers in sequence:'
    data = gets.chomp
    Helper.isNaturalNumber(data)
    @nNumber = data.to_i
    puts 'Sequence numbers:'
    sequenceNumber = Array.new(@nNumber) { rand(1...100) }
    print sequenceNumber
    (0..@nNumber - 1).each { |i|
      if (sequenceNumber[i].to_i % 5).zero? && !(sequenceNumber[i].to_i % 7).zero?
        @sumOfNumbers += sequenceNumber[i].to_i
        @countOfNumbers += 1
      end
    }
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
