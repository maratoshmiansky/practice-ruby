# use the select method to refactor the code below

# numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#   if number % 2 == 0
#     even_numbers << number
#   end
# end
# p even_numbers

numbers1 = [1, 2, 4, 2]
numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers1.select { |number| number % 2 == 0 }
p numbers2.select { |number| number % 3 == 0 }

# more play with select, plus sort

movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p movies.select { |movie| movie[:rating] < 4.0 }
p movies.sort { |movie1, movie2| movie1[:title] <=> movie2[:title] }
p movies.select { |movie| movie[:rating] < 4.0 }.sort { |movie1, movie2| movie1[:title] <=> movie2[:title] }

# select plus map

p movies.select { |movie| (movie[:title].include? "b") || (movie[:title].include? "B") }
p movies.select { |movie| (movie[:title].include? "b") || (movie[:title].include? "B") }.map { |movie| movie[:id] }
