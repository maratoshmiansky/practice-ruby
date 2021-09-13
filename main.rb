require "./store_item.rb"
require "./store_location.rb"
require "./storeable.rb"
include Storeable

item1 = Store_item.new({ type: "cd", class: "music", price: 15.99 })
item2 = Store_item.new({ type: "dvd", class: "movies", price: 29.99 })
item3 = Store_item.new({ type: "laptop", class: "computers", price: 899.99 })
loc1 = Store_location.new({ address: "1234 Google St.", city: "Denver" })

item1.print_info
item2.print_info
item3.print_info
