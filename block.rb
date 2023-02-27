arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 0
arr.each do |n|
  if n % 2 == 0
    count += 1
  end
end
puts count
