def dividersSum(num)
    sum = 0
    for i in 1...num
       if num % i == 0
           sum += i
       end
    end
    return sum
end

print "Input numbers count: "
count = gets.chomp.to_i
(1..count).each do |digit|
    if dividersSum(digit) == digit
        puts digit
    end
end