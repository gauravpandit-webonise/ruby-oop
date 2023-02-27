# block
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 0
arr.each { |n| count += 1 if n.even? }
puts count


# proc
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 0
proc = Proc.new { |val| val.each { |x| count += 1 if x.even?}}
proc.call(arr)
puts count


# lambda

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 0
even_count = -> (arr) {arr.each do |i|
  if i % 2 == 0
    count += 1
  end
end
puts count
}
even_count.call(arr)
