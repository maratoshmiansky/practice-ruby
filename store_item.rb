def Store_item
  attr_reader :type, :class, :price

  def initialize(input_type, input_class, input_price)
    @type = input_type
    @class = input_class
    @price = input_price    
  end

  def print_info
    puts "Item type #{type} in class #{class} sells in our store for $#{price}."
  end
end

item1 = Store_item.new("cd", "music", 15.99)
item2 = Store_item.new("dvd", "movies", 29.99)
item3 = Store_item.new("laptop", "computers", 899.99)


item1.print_info
item2.print_info
item3.print_info
