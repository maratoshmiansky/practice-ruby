class Store_item
  include Storeable
  attr_accessor :type, :class, :price

  def initialize(input_options)
    @type = input_options[:type]
    @class = input_options[:class]
    @price = input_options[:price]
  end
end

class Store_location
  attr_accessor :address, :city

  def initialize(input_options)
    @address = input_options[:address]
    @city = input_options[:city]
  end
end
