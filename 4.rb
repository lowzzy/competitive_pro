a = gets.to_i # 500
b = gets.to_i # 100
c = gets.to_i # 50
x = gets.to_i

ret = 0
(a + 1).times do |a_i|
    
    (b + 1).times do |b_i|
        
        (c + 1).times do |c_i|
            ret+= 1 if a_i * 500 + b_i * 100 + c_i * 50 == x
        end
    end

end

puts ret

