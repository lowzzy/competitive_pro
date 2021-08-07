n,a,x,y = gets.chomp.split.map(&:to_i)
puts n > a ? (n - a) * y + a * x : n * x
