nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]

class Num_array
  
end

def average(numbers_array)
  total = 0
  numbers_array.each do |number|
    total += number
  end
  p total
  avg = total / nums.length
end

puts nums.average
