employees = [
  { first_name: "Jimmy", last_name: "Smith", age: 36, position: "clerk" },
  { first_name: "Lisa", last_name: "Chow", age: 29, position: "project manager" },
  { first_name: "Mark", last_name: "Snell", age: 39, position: "associate manager" },
  { first_name: "Heather", last_name: "Glenn", age: 23, position: "hiring manager" },
]

p employees.select { |employee| employee[:age] < 36 }
p employees.map { |employee| employee[:position] }
p employees.map { |employee| employee[:age] }.reduce(0) { |sum, age| sum + age }
p employees.sort { |a, b| a[:last_name] <=> b[:last_name] }
p employees.sort { |a, b| b[:age] <=> a[:age] }
employees.each do |employee|
  puts "#{employee[:first_name]} #{employee[:last_name]} is #{employee[:age]} years old."
end
