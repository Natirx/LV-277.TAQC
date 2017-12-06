#text = "472.33€"  
text = "$472.33"  
price_re = /\d+\.\d+/  
m = price_re.match(text)  
unless m  
  puts "There was no match..."  
  exit  
end  
print "The whole string we started with: "  
puts m.string  
print "The entire part of the string that matched: "  
puts m[0]
puts "The three captures: "  
3.times do |index|  
  puts "Capture ##{index + 1}: #{m.captures[index]}"  
end  
puts "Here's another way to get at the first capture:"  
print "Capture #1: "  
puts m[1]
