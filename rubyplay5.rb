# refactor the code below using the reduce method

numbers = [1, 2, 4, 2]
sum = 0
numbers.each do |number|
  sum += number
end
p sum

p numbers.reduce(0) { |sum, num| sum + num }
p numbers.reduce (:+)  # does the same as the line above

# return the Scrabble point value of a string

def scrabble_score(string)
  points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}
  string_array = string.downcase.chars
  string_array.reduce(0) { |sum, letter| sum + points[letter] }
end

p scrabble_score("scholar")  #=> 12
p scrabble_score("Maratik")  #=> 13

# using map, select and reduce methods on an array of hashes

items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
  {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
]

p items.select { |item| item[:type] == :book }.map { |item| item[:words] }.reduce(0) { |sum, words| sum + words }
p items.select { |item| item[:type] == :book }.reduce(0) { |sum, item| sum + item[:words] }  # does the same as the line above but without using map


# return true if all letters in second string are contained in the first string

def mutation?(string1, string2)
  match = true
  string2.downcase.chars.map { |letter| match = false unless string1.downcase.include?(letter) }
  match
end

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false
p mutation?("marat", "Marta")  #=> true
p mutation?("art", "Marat")  #=> false

# return the sum of the numbers in the range, inclusive

def sum_of_range(range)
  if range[0] == range[1]
    range[0]
  elsif range[0] < range[1]
    (range[0]..range[1]).reduce(:+)
  else
    (range[1]..range[0]).reduce(:+)
  end
end

p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10
p sum_of_range([1, 100])  #=> 5050
p sum_of_range([10, 5])  #=> 45
p sum_of_range([31, 31])  #=> 31
