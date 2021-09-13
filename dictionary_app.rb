require "http"
system "clear"

print "Hi!  Please enter a word for a definition: "
word = gets.chomp

response_def = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
response_example = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

word_def = response_def.parse(:json)
definition = word_def[0]["text"]
word_ex = response_example.parse(:json)
top_example = word_ex[0][0]["text"]

puts "The definition of #{word} is: #{definition}."
puts "The top example of #{word} in usage is: #{top_example}."
