  #create an empty array
  @students = []
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #get the first name
  name = gets .chomp
  #while the name is not empty, repeat this code
  while name!='' do
  	#add the student hash to the array
  	@students << {name: name, cohort: :november}
  	puts "Now we have #{@students.count} students"
  	#get another name from the user
  	name = gets.chomp
  end
  # #return the array of students
  # @students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def prints_students_list(students)
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

#Print the menu that's show to the user
def print_menu
 # 1. Print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end
# Call the other funtion
def show_students
  print_header
  prints_students_list(@students)
  print_footer(@students)
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit # close the program
  else
    puts "I don't know what do you mean, Try again!"
  end
end

def interactive_menu
  loop do
    print_menu
    # 2. Read the input and save it into a variable
    process(gets.chomp)
  end
end

interactive_menu

