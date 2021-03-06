module EmailReportable # to be included in the Manager and Intern classes
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

class Employee
  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
    # p @employees
    # p @employees[0]
    # p @employees[1]
  end

  def give_all_raises
    @employees.each do |employee| # this is more concise than using a while loop
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
manager.give_all_raises
employee1.print_info
employee2.print_info
manager.fire_all_employees
p employee1.active
p employee2.active

class Intern < Employee
  include EmailReportable
end

intern = Intern.new(first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true)
intern.print_info
intern.send_report
