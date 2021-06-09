puts "Greetings! What is your year of origin?"
origin = gets.chomp.to_i
if origin < 1900
  puts "That's the past!"
elsif origin > 1900 && origin <= 2021
  puts "That's the present!"
else
  puts "That's the future!"
end
