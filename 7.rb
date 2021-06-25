n = gets.to_i
d = []
n.times do
  d << gets.to_i
end
d.sort!.reverse!

ret = 1
(n - 1).times do |i|
  ret += 1 if d[i] > d[i + 1]
end
puts ret
