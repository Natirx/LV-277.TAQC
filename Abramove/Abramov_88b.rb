class Abramov
  def amount_digits(num)
    #puts 'Input you Numeric'
    #num = gets.chomp
    num.to_s.chars.join.chars.map(&:to_i).reduce(:+)
  end
end


#first = Abramov.new
#p first.amount_digits(11)

