n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort!
b = gets.split.map(&:to_i).sort!

min_dif # aとbの絶対値の最小
b_near # bの候補
b_i # bの候補
a_near # aの候補
a_i # aの候補

a_i = a.size / 2
a_near = a[a_i]

b.each do |b_|
    if min_dif > abs(b_ - a_near) || min_dif == nil
        min_dif = abs(b_ - a_near)
        b_near = b_
    end
end

if b_ - a_near > 0

else
end
