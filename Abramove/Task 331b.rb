def x_y_z(a)
	x=1;
	tmp=true;
	loop{
		res_x = a - x**2;
		y=x;
		loop{
			 res_xy = res_x - y**2; z = Integer(Math.sqrt(res_xy));
			if z**2 == res_xy  
				tmp = false; puts "\n#{x} #{y} #{z}";
			end 
				y = y+1;
				break if y*y >= res_x
			}
				 x=x+1; 
				 break if x**2 >= a/3	
		}
		puts"\nSuch set does not exist" if tmp;
end

#-----main-----

print"\nInput n: "
n=gets.chomp.to_i;
x_y_z(n); 
