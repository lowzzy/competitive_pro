gets
s = gets.chomp

check = true
s.chars.each do |s_|
    return puts "Takahashi" if s_ == "1" && check
    return puts "Aoki" if s_ == "1" && !check
    check = !check
end
