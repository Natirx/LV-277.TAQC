def dividersSum(num)
    sum = 0
    for i in 1...num
       if num % i == 0
           sum += i
       end
    end
    return sum
end

def isPerfect (num) 
    digit = 1
    while (digit <= num)
        if dividersSum(digit) == digit
            puts digit
        end
        digit += 1
    end
end

print "Input numbers count: "
count = gets.chomp.to_i
puts isPerfect(count)