def is_series(x)
    i = 0
    while x[i + 1] == x[i] + 1 || (x[i] == 9 && x[i + 1] == 0) do
        i += 1
        return true if i == 3
    end
    false
end

def is_same(x)
    (x.size-1).times do |i|
        return false if x[i] != x[i + 1]
    end
    true
end

x = gets.chomp.split("").map(&:to_i)


return puts "Strong" if !is_same(x) && !is_series(x)
puts "Weak"
