n = gets
a = gets

ret = 0
n = n.to_i
a = a.split(" ")
a.map!(&:to_i)
while 1 
    i = 0
    a.each do |num|
        i += 1 if num % 2 == 0
    end
    if i == a.length
        a.map! do |num|
            num /= 2
        end
        ret += 1
    else
        puts ret
        return
    end
end