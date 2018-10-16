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
	count = 0
	puts "Give me a letter to print the names of the students with it!"
	letter = gets.chomp.upcase
	print_header
	names.each do |name|
		if name.start_with?(letter)
			puts name
			count += 1
		end
	end
	print "Overall, we have #{count} great students with the letter: #{letter} \n"	
end

# NOthing happens until we call the methods
prints(students)

