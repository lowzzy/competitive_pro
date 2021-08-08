def ret(target,arr)
    cnt = 1
    head = 0
    tail = arr.size - 1
    while 1
        center = (head + tail) / 2

        if arr[center] == target
          break
        elsif arr[center] < target
          head = center + 1
        else
          tail = center - 1
        end
    end

    center + 1
end

h ,w, n = gets.split.map(&:to_i)
a = []
b = []
n.times do |i|
    a_, b_ = gets.split.map(&:to_i)
    a << a_
    b << b_
end

uniq_a = a.uniq.sort
uniq_b = b.uniq.sort

n.times do |i|
    printf "#{ret(a[i],uniq_a)} "
    printf "#{ret(b[i],uniq_b)}\n"
end

