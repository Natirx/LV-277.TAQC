require 'set'

class CalculationTask560
  def getSumDevidesOfNumber(number)
    sum = 0
    (1..number - 1).each { |i| sum += i if (number % i).zero? }
    sum
  end

  def initialize
    @sumOfNumbers = []
    @startNumber = 200
    @endNumber = 300
  end

  def getTask560Result
    puts "Start number = #{@startNumber}\nEnd number = #{@endNumber}"
    puts 'All pairs of friendly numbers:'
    (@startNumber..@endNumber - 1).each { |i|
      (i + 1..@endNumber).each { |j|
        @sumOfNumbers << [i, j] if getSumDevidesOfNumber(i) == j && getSumDevidesOfNumber(j) == i
        }
      }
    print "Result: #{@sumOfNumbers}\n"
  end
end

# calculationTask560 = CalculationTask560.new
# calculationTask560.getTask560Result