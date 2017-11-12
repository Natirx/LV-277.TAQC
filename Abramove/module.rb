module PrimeModule
  def divisors
    (2..num).each {|n| result.push(n) if (num%n).zero? }
    @result
  end
  def prime?(num)
    (2...num).each {|v| return false if (num % v).zero? }
    @num
  end
  def prime_of_array
    result.select {|v|  prime?(v)}
  end
end
