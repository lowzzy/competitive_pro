def trans(str)
    j = 0
    i = 0
    while str[i] == '<'
        j+=1
        i+=1
    end
    num = 10*j
    j = 0
    while str[i] == '/'
        j+=1
        i+=1
    end
    num += j
end

str=gets.split('+')

ret = 0
str.each do |s|
    ret += trans(s)
end

puts ret
