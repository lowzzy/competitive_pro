n = gets.to_i
a = gets.split.map(&:to_i)

a_sort = a.sort.reverse

i = 0
while a[i] != a_sort[1] do
    i += 1
end

puts i + 1
