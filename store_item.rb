class Store_item
  attr_reader :type, :class, :price

  def initialize(input_options)
    @type = input_options[:type]
    @class = input_options[:class]
    @price = input_options[:price]
  end

  def print_info
    puts "Item type #{@type} in class #{@class} sells in our store for $#{@price}."
  end
end

item1 = Store_item.new({type: "cd", class: "music", price: 15.99})
item2 = Store_item.new({type: "dvd", class: "movies", price: 29.99})
item3 = Store_item.new({type: "laptop", class: "computers", price: 899.99})

item1.print_info
item2.print_info
item3.print_info
