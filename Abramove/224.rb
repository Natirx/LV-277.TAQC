class PRime
    
        def initialize(num)
            @num = num
            @result =[]
            @uniq =[]
            @b = (2..@num)
        end
        
        def divisors
             @b.each do |n| 
             if @num%n==0
                 @result.push(n)
             end
            end
             @result
        end
    
        def prime
            
              @result.each do |num|
                @uniq << num
                 (2...num).each do |v|
                if num % v == 0
                    @uniq.delete(num)
              end
            end
        end
    end

def show_prime
    p "Prime divisors : #{@uniq}" 
    @uniq.clear
    @result.clear
end 
def show_divisors
    p "Divisors: #{@result}"
   
end
    end
 