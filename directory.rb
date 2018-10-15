# Let's put all students into an array
students = [
	{name: "Dr. Hannibal Lecter", cohort: :november},
	{name: "Darth Vader", cohort: :november},
	{name: "Nurse Ratched", cohort: :november},
	{name: "Micheal Corleone", cohort: :november},
	{name: "Alex DeLarge", cohort: :november},
	{name: "The Wicked Witch of the West", cohort: :november},
	{name: "Terminator", cohort: :november},
	{name: "Freddy Krueger", cohort: :november},
	{name: "The Joker", cohort: :november},
	{name: "Joffrey Baratheon", cohort: :november},
	{name: "Norman Bates", cohort: :november}
]

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

# NOthing happens until we call the methods
print_header
prints(students)
print_footer(students)