class Person
  attr_reader :first_name, :last_name
  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end
  def to_s
    last_name + ", " + first_name
  end
end

tj = Person.new("Thomas", "Jefferson")
puts tj.first_name
puts tj.last_name
puts tj.to_s
