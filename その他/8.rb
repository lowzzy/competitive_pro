str = gets.split(" ")

n = str[0].to_i
A = str[1].to_i

x = 0
while x <= n
  y = 0
  while y <= n
    z = n - x - y
    if z < 0
      y += 1
      next
    end
    if 10_000 * x + 5_000 * y + 1_000 * z == A
      puts "#{x} #{y} #{z}"
      return
    end
    y += 1
  end
  x += 1
end

puts "-1 -1 -1"
