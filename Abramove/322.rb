def dividersC(num)
    k = 0
    (1..num).each do |i|
        if (num % i == 0)
            k += 1
        end
    end
    return k
end

puts "Wait a second, i'm compiling :)"
maxK = 0
maxDivider = 0
(0..1000).each do |num|
    countInNum = dividersC(num)
    if (countInNum > maxK)
        maxK = countInNum
        maxDivider = num
    end
end
puts maxDivider



