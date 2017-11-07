require './prime.rb'
require './automorphic.rb'
class Main
	attr_accessor :x
	def initialize 
		@x = []
	end
	def add_number(t)
		@x << t
	end

	def run
		loop do
			puts "TASK"
			puts "p: Prime of number"
			puts "a: automorphic numbers"
			puts "e: Exit"
			print "Press key:"
			input = gets.chomp.downcase
			case input 
				when 'e'
					break
				when 'p'
					divisor
				when 'a'
					automorphic
				
			end
		end
	end
def automorphic
	morphic = Automorphic.new
	print "Enter number:"
	entered = gets.chomp.to_i
	morphic.is_automorphic(entered)
end

def divisor
	print "Enter number:"
	number = gets.chomp.to_i
	prime = PRime.new(number)
	loop do
		puts "d: Find divisors of number"
		puts "p: Find prime divisors of number"
		puts "r: TO enter new number"
		puts "Any other key to exit"
		print "Press key:"
		respon = gets.chomp.downcase
		case respon
	when 'd'
		prime.divisors
		prime.show_divisors
	when 'p'
		prime.prime
		prime.show_prime
	when 'r'
		divisor
	else
		break
	end
end
end

end

number = Main.new
number.run
