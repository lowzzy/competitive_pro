n = gets.to_i
str = []
n.times do
    str << gets.split(" ")
end
str.map!{|s| s.map!{|x| x.to_i}}

x = 0
y = 0
i = 0
n_ = str[0][0]
while 1 do
    abss = ((x - str[i][1]).abs + (y - str[i][2]).abs)
    n_ = str[i][0] - str[i-1][0] if i > 0
    if n_ >= abss && (n_ - abss).even?
        x = str[i][1]
        y = str[i][2]
        i += 1
        break if i == n
        next
    end
    break
end

puts "Yes" if i == n
puts "No" if i != n

