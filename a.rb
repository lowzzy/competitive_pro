a,b = gets.split(" ")

a = a.to_i
b = b.to_i

ans = a * b

if ans > 9999
    puts "NG"
else
    puts ans
end
