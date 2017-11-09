# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask323
  def getDivides(number)
    (1..number).select { |el| (number % el).zero? }
  end

  def getTask323Result
    @resultData = []
    puts 'Enter number n:'
    @number = gets.chomp
    Helper.isNaturalNumber(@number)
    @number = @number.to_i
    @resultData = (1..@number - 1).find_all { |el| (getDivides(el) & getDivides(@number)).max == 1 }
    puts "All mutually simple numbers with #{@number} and smaller than it:"
    print "#{@resultData}\n"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end

# calculationTask323 = CalculationTask323.new
# calculationTask323.getTask323Result
