def print_header
	puts "The students of Villains Academy:"
	puts "-----------------"
end

def prints
	@count = 0
	@students.each_with_index do |name, idx|
		puts "#{idx+1}. #{name[:name]} (#{name[:cohort]} cohort) - Age: #{name[:age]}, - Hobbie: #{name[:hobbie]}"
		@count += 1
	end	
end

def print_footer(names)
	print "Overall, we have #{@count} great students \n"	
end

def saving_students(name, age, hobbie, cohort = :november)
	#save the information
	@students << {name: name, age: age, hobbie: hobbie, cohort: cohort}
end

def asking_data
	@students = []
	puts "Please enter the name of the student"
	puts "To finish, just hit return twice"
	#get the first name
	name = gets.chomp.capitalize
	#get the first cohort
	puts "Please enter the name of the cohort"
	cohort = gets.chomp
	#Get age
	puts "Please enter your age"
	age = gets.chomp
	#Hobbie
	puts "Please enter your hobbie"
	hobbie = gets.chomp
	#Saving the first name and cohort
	saving_students(name, age, hobbie, cohort.to_sym)
	while name != '' do
		puts "Give me another name"
		name = gets.chomp.capitalize
		puts "Give the cohort"
		cohort = gets.chomp
		puts "Please enter your age"
		age = gets.chomp
		puts "Please enter your hobbie"
		hobbie = gets.chomp
		if cohort != "" and name != ""
			saving_students(name, age, hobbie, cohort.to_sym)
		elsif cohort == "" and name !=""
			saving_students(name, age, hobbie)
		end
	end
end

# Nothing happens until we call the methods
asking_data
print_header
prints
print_footer(@students)
