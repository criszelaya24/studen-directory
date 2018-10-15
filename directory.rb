def print_header
	puts "The students of Villains Academy"
	puts "-----------------"
end

def prints(names)
	names.each do |name|
		puts "#{name[:name]} (#{name[:cohort]} cohort)"
	end	
end

def print_footer(names)
	print "Overall, we have #{names.count} great students \n"	
end

def input_students
	puts "Please enter the name of students"
	puts "To finish, just hit return twice"
	#Create an empty array
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while name != '' do
		#Add the student hash to the array
		students << {name: name, cohort: :november}
		puts "Now we have #{students.count} students"
		#get another name from the user
		name = gets.chomp
	end
	# Return the array of students
	students
end
# Nothing happens until we call the methods
students = input_students
print_header
prints(students)
print_footer(students)