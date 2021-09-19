# bubble sort
nums = [7, 0 -3, -12, -1, 1, 4, 19, 12, 4, 0]
index1 = 0
p nums
while index1 < nums.length - 1
  index2 = index1 + 1
  while index2 < nums.length
    if nums[index1] > nums[index2]
      temp = nums[index1]
      nums[index1] = nums[index2]
      nums[index2] = temp
    end
    index2 += 1
  end
  index1 += 1
end
p nums
p nums.reverse

# some array methods
p nums.select {|num| num >= 0}
p nums.map {|num| num * 2}
p nums.reduce(0) {|sum, num| sum + num}

# find the longest word in the sentence

def find_longest_word(input_sentence)
  sentence = input_sentence.split(" ")
  longest_word = ""
  sentence.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end
  longest_word
end

p find_longest_word("Which is the longest word in this sentence?")
p find_longest_word("This particular sentence should have a number of interesting words.")

# reverse a string

def reverse(string)
  index = string.length - 1
  reversed = ""
  while index >= 0
    reversed += string[index]
    index -= 1
  end
  reversed
end

p reverse("maratical")
p reverse("I can also handle a sentence!")

