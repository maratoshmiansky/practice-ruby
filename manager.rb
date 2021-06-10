class Employee
  attr_reader :first_name, :last_name, :salary, :active  # replaces individual getter methods
  attr_writer :active  # replaces individual setter method

  def initialize(input_options)  # argument is a hash with four keys
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  
  def print_info
    puts "#{first_name} #{last_name} makes $#{salary} a year."    
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee  # the Manager class inherits all the methods and variables of the Employee class
  def send_report
    puts "Sending email..."
    # use an email sending library
    puts "Email sent!"
  end
end

manager = Manager.new({first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true})
manager.print_info
manager.send_report
