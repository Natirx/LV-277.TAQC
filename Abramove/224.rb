require "./module.rb"
class Primee
  include PrimeModule

  attr_reader :num, :result

  def initialize(num)
    @num = num
    @result = []
  end
end

prime = Primee.new(12)
p prime.divisors
p prime.prime_of_array
