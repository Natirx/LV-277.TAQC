# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask182
  def getTask183Result
    @numberCount = 0
    @resultData = 0
    puts 'Enter count numbers in sequence:'
    data = gets.chomp
    Helper.isNaturalNumber(data)
    @nNumber = data.to_i
    puts 'Sequence numbers:'
    sequenceNumbers = Array.new(@nNumber) { rand(1...100).to_i }
    print sequenceNumbers
    @resultSequence = sequenceNumbers.select{|el| (el % 5).zero? && !(el % 7).zero?}
    @resultData = @resultSequence.sum
    @numberCount = @resultSequence.length
    puts "\nSum of correct numbers from sequence = #{@resultData}"
    puts "Count of correct numbers from sequence = #{@numberCount}"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end

# calculationTask182 = CalculationTask182.new
# calculationTask182.getTask183Result
