i=0
a = Array.new((print "Input n: ";gets.to_i)) {|i| (i+1)}
print a
 c=a.find_all{ |i| (i % 3 )==0 }
    b=a.find_all{ |i| (i % 5)!= 0 }
    x=(c&b).count
    puts " quantity of elemets that multiples on 3 and dont on 5 Is #{x}"
