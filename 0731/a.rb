# https://atcoder.jp/contests/abc114/tasks/abc114_c

# 753がそれぞれ一回以上出現するかどうか
def is_753(num)
  cnt_3 = 0
  cnt_5 = 0
  cnt_7 = 0
  while num % 10 == 7 ||num % 10 == 5 || num % 10 == 3 do
    cnt_3 += 1 if num % 10 == 3
    cnt_5 += 1 if num % 10 == 5
    cnt_7 += 1 if num % 10 == 7
    num /= 10
  end

  if cnt_3 > 0 && cnt_5 > 0 && cnt_7 > 0
    return num == 0
  end
  return false
end

n = gets.to_i

puts is_753(n)
