a,b = gets.split.map(&:to_i)
a = a.to_s(2)
b = b.to_s(2)

# 異なったら1,同じなら0

if a.size < b.size
    len =  b.size
    a_size = a.size
    (b.size - a_size).times do
        a.insert(0,'0')
    end
else
    len =  a.size
    b_size = b.size
    (a.size - b_size).times do
        b.insert(0,'0')
    end
end
ans = ''
len.times do |i|
    ans << '1' if a[i] != b[i]
    ans << '0' if a[i] == b[i]
end

puts ans.to_i(2)
