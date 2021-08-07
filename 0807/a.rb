a,b = gets.split.map(&:to_i)

puts "Gold" if a > 0 && b == 0
puts "Silver" if b > 0 && a == 0
puts "Alloy" if a > 0 && b > 0
