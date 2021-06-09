# item1 = {:type => "cd", :class => "music", :price => 15.99}
# item2 = {:type => "dvd", :class => "movies", :price => 29.99}
# item3 = {:type => "laptop", :class => "hardware", :price => 899.99}
item1 = {type: "cd", class: "music", price: 15.99}
item2 = {type: "dvd", class: "movies", price: 29.99}
item3 = {type: "laptop", class: "hardware", price: 899.99}

puts "Item type #{item1[:type]} in class #{item1[:class]} sells in our store for $#{item1[:price]}."
puts "Item type #{item2[:type]} in class #{item2[:class]} sells in our store for $#{item2[:price]}."
puts "Item type #{item3[:type]} in class #{item3[:class]} sells in our store for $#{item3[:price]}."
