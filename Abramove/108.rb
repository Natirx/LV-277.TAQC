def input_n_result()
n=gets.chomp.to_i
i=0
until 2**i > n 
		i = i + 1
	end
return 2**i
end


#-----main-----

print"\nInput n:\n"
puts "The smallest number kind 2^r : #{input_n_result()}\n"