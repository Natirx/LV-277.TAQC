#Ruby\CheckFor3.rb

puts "Input natural number:"
num = gets.chomp.to_i
num = (num * num)

digitsArr = num.to_s.chars.map(&:to_i)

for i in 0..digitsArr.length
    if (digitsArr[i] == 3)
        puts "Square of number '#num' contains digit '3'! "
        exit
    end
end

puts "Square of number '#num' doesn't contain digit 3"