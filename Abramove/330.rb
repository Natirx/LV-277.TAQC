def dividersSum(num)
    sum = 0
    (1...num).each do |i|
       if num % i == 0
           sum += i
       end
    end
    return sum
end

puts "Input numbers count: "
count = gets.chomp.to_i
(1..count).each do |digit|
    if dividersSum(digit) == digit
        puts digit
    end
end