class Store_location
  attr_accessor :address, :city

  def initialize(input_options)
    @address = input_options[:address]
    @city = input_options[:city]
  end
end
