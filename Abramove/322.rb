$maxDivider = 0
$maxK = 0

def dividersC(num)
    k = 0
    (1..num).each do |i|
        if (num % i == 0)
            k += 1
        end
    end
    return k
end

def maxDivider()
    for num in 0..10000 
        if (dividersC(num) > $maxK)
            $maxK = dividersC(num)
            $maxDivider = num
        end
    end
    return $maxDivider
end

puts maxDivider()


