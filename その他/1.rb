str = gets
strArray = str.split(" ")

a = strArray[0].to_i
b = strArray[1].to_i
return if  a < 0 || b < 0 || a > 10_000 || b > 10_000
if (a * b) % 2 == 1
	printf "Odd"
else
	printf "Even"
end

return