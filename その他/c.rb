i = 1
j = 2
tmp = 0

sum = j

while tmp < 400_000 do
    tmp = i + j
    i = j
    j = tmp
    sum += tmp if tmp % 2 == 0
end

puts sum
