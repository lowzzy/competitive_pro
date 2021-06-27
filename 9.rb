str = gets.chomp

item = ["maerd", "remaerd", "esare", "resare"]

str.reverse!

s = 0
check = -1
while 1
  item.each do |i|
    l = s + i.length - 1
    if i == str[s..l]
      s = l + 1
      if s == str.length
        check = 0
      else
        check = 1
      end
      break
    end
  end
  return puts "NO" if check == -1
  return puts "YES" if check == 0
end
