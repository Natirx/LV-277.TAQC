def algEvklid(a, b)
    return a.abs if b==0
    algEvklid(b, a % b)
end

def check_first_second(first_v,second_v)
  #if first_v<second_v
  return algEvklid(second_v, first_v) if first_v<second_v;
  return algEvklid(first_v, second_v);
  end


# -----main-----
print"\nPlease input First value :\n";
first_v= gets.chomp.to_i;
print"\nPlease input Second value :\n";
second_v= gets.chomp.to_i;

print"\nGreatest common divisor: #{check_first_second(first_v,second_v)}\n";