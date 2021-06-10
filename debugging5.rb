print "Input exam grade one: "
exam_one = gets.chomp.to_i
print "Input exam grade two: "
exam_two = gets.chomp.to_i
print "Input exam grade three: "
exam_three = gets.chomp.to_i

def list_grade(exam_one, exam_two, exam_three)
  puts "Exams: #{exam_one}, #{exam_two}, #{exam_three}."
end

def average_grade(exam_one, exam_two, exam_three)
  average = (exam_one + exam_two + exam_three) / 3
end

average = average_grade(exam_one, exam_two, exam_three).to_i

def letter_grade(average_grade)
  if average_grade >=0 && average_grade < 59
    puts "Grade: F"
  elsif average_grade >= 60 && average_grade <= 69
    puts "Grade: D"
  elsif average_grade >= 70 && average_grade <= 79
    puts "Grade: C"
  elsif average_grade >= 80 && average_grade <= 89
    puts "Grade: B"
  elsif average_grade >= 90 && average_grade <= 100
    puts "Grade: A"
  else
    puts "Grade is undefined."
  end
end

def pass_fail(average)
  if average < 59
    puts "Student is failing."
  else
    puts "Student is passing."
  end
end

list_grade(exam_one, exam_two, exam_three)
puts "Average: #{average}"    
letter_grade(average) 	 
pass_fail(average)
