n = gets.to_i
str = gets.chomp

arr = []
check = 0
tmp = ''

str.chars.each do |s|
    if ('A'..'Z').include?(s) && check == 0
        tmp << s
        check = 1
    elsif ('a'..'z').include?(s)
        tmp << s
    else
        tmp << s
        arr << tmp
        tmp = ''
        check = 0
    end
end

arr.sort_by!{ |s| [s.downcase,s]}

puts arr.join('')
