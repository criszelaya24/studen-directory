def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets .chomp
  #while the name is not empty, repeat this code
  while name!='' do
  	#add the student hash to the array
  	students << {name: name, cohort: :november}
  	puts "Now we have #{students.count} students"
  	#get another name from the user
  	name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def prints(students)
  students.each do |student|
    if student[:name] != ""
      puts "#{student[:name]}, (#{student[:cohort]} cohort)"
    else
    end
  end
end

def print_footer(names)
  print "Overall, we have #{names.count} great students\n"
end


students = input_students
print_header
prints(students)
print_footer(students)
