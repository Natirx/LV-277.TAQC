# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask323
  def initialize
    @sumOfNumbers = []
  end

  def getAllDevidesOfNumber(number)
    data = []
    (1..number).each do |item|
      data << item if (number % item).zero?
    end
    data
  end

  def getTask323Result
    puts 'Enter number n:'
    number = gets.chomp
    Helper.isNaturalNumber(number)
    @nNumber = number.to_i
    (1..@nNumber - 1).each do |number|
      @sumOfNumbers << number if (getAllDevidesOfNumber(number) & getAllDevidesOfNumber(@nNumber)).max == 1
    end
    puts "All mutually simple numbers with #{@nNumber} and smaller than it"
    print "#{@sumOfNumbers.to_s}\n"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end

# calculationTask323 = CalculationTask323.new
# calculationTask323.getTask323Result