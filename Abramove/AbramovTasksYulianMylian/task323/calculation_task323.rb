# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask323
  def initialize
    @sumOfNumbers = []
  end

  def getNumberDivides(number)
    data = []
    (1..number).each { |i| data << i if (number % i).zero? }
    data
  end

  def getTask323Result
    puts 'Enter number n:'
    @number = gets.chomp
    Helper.isNaturalNumber(@number)
    @number = @number.to_i
    (1..@number - 1).each { |i| @sumOfNumbers << i if (getNumberDivides(i) & getNumberDivides(@number)).max == 1 }
    puts "All mutually simple numbers with #{@number} and smaller than it:"
    print "#{@sumOfNumbers}\n"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end

# calculationTask323 = CalculationTask323.new
# calculationTask323.getTask323Result
