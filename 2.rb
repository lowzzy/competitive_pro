str = gets
j = 0
str.chars.each do |n|
  j+=1 if n == '1'
end
puts j