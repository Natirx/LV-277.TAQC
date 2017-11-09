require 'set'

class CalculationTask560
  def getSumDevides(number)
    (1..number - 1).select { |el| (number % el).zero? }.sum
  end

  def initialize
    @resultData = []
    @startNumber = 200
    @endNumber = 300
  end

  def getTask560Result
    puts "Start number = #{@startNumber}\nEnd number = #{@endNumber}"
    puts 'All pairs of friendly numbers:'
    (@startNumber..@endNumber - 1).each { |i|
      (i + 1..@endNumber).each { |j|
        @resultData << [i, j] if getSumDevides(i) == j && getSumDevides(j) == i
        }
      }
    print "Result: #{@resultData}\n"
  end
end

calculationTask560 = CalculationTask560.new
calculationTask560.getTask560Result
