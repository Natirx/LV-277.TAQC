#Ruby\CheckFor3.rb

puts "Input natural number:"
num = gets.chomp.to_i
num = (num * num).to_s.split(//)

num.each do |i|
    if i == '3'
        puts "Square of number '#num' contains digit '3'! "
        exit
    end
end
puts "Square of number '#num' doesn't contain digit 3"