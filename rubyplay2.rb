array = [-13, 15, 2, 9, 3, 2, 1, 1, 1, -5, -6, 0]
index1 = 0

while index1 < array.length - 1
  index2 = index1 + 1
  while index2 < array.length
    if array[index1] > array[index2]
      temp = array[index1]
      array[index1] = array[index2]
      array[index2] = temp
    end
    index2 += 1
  end
  index1 += 1
end

p array
