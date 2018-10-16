def print_header
	puts "The students of Villains Academy with names shorter than 12 characters are:"
	puts "-----------------"
end

def prints(names)
	@count = 0
	names.each_with_index do |name, idx|
		if name[:name].length <= 12
			puts "#{idx+1}. #{name[:name]} (#{name[:cohort]} cohort)"
			@count += 1
		end
	end	
end

def print_footer(names)
	print "Overall, we have #{@count} great students \n"	
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
