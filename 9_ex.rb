str = gets.chomp

str = str.gsub(/eraser/, "")
         .gsub(/erase/, "")
         .gsub(/dreamer/, "")
         .gsub(/dream/, "")

puts str.length == 0 ? "YES" : "NO"
