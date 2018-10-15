# Let's put all students into an array
students = [
	"Dr. Hannibal Lecter",
	"Darth Vader",
	"Nurse Ratched",
	"Micheal Corleone",
	"Alex DeLarge",
	"The Wicked Witch of the West",
	"Terminator",
	"Freddy Krueger",
	"The Joker",
	"Joffrey Baratheon",
	"Norman Bates"
]

def print_header
	puts "The students of Villains Academy"
	puts "-----------------"
end

def prints(names)
	names.each do |name|
		puts name
	end	
end

def print_footer(names)
	print "Overall, we have #{names.count} great students \n"	
end

# NOthing happens until we call the methods
print_header
prints(students)
print_footer(students)
