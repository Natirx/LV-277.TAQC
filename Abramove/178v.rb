i=0
a = Array.new((print "Input n: ";gets.to_i)) {|i| (i+1)}
print a
	c=a.find_all{ |i| i%2==0}
	x=Array.new(c.count) { |i| c[i]**2  }
	m=(x&a).count
    puts m