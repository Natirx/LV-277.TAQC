class Automorphic
	def is_automorphic(n)
		(1..n).each do |num|
			sq = num*num
			puts "Number : #{num}: #{sq}" if sq.to_s.end_with?(num.to_s)
		end
	end
end





