arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 0
proc = Proc.new { |val| val.each { |x| count += 1 if x.even?}}
proc.call(arr)
puts count
