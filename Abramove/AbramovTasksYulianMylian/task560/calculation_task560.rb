require 'set'

class CalculationTask560
  def getSumDevidesOfNumber(number)
    sum = 0
    (1..number - 1).each do |i|
      sum += i if (number % i).zero?
    end
    sum
  end

  def initialize
    @sumOfNumbers = SortedSet.new
    @startNumber = 200
    @endNumber = 300
  end

  def getTask560Result
    puts "Start number = #{@startNumber}\nEnd number = #{@endNumber}"
    puts 'All pairs of friendly numbers:'
    (@startNumber..@endNumber - 1).each do |i|
      (i + 1..@endNumber).each do |j|
        if getSumDevidesOfNumber(i) == j && getSumDevidesOfNumber(j) == i
          @sumOfNumbers.add([i, j])
          print "#{i}, #{j}\n"
        end
      end
    end
  end
end

# calculationTask560 = CalculationTask560.new
# calculationTask560.getTask560Result