n , k = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

max = 0
j = 0
while j < n - k + 1 do
  puts ans
  ans = c[j..(j+k-1)].tally.size
  max = ans if ans > max
  j += 1
end

puts max
