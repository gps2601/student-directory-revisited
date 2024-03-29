students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobby: "tennis"},
  {name: "Darth Vader", cohort: :november, hobby: "rockclimbing"},
  {name: "Nurse Ratched", cohort: :november, hobby: "tennis"},
  {name: "Michael Corleone", cohort: :november, hobby: "cricket"},
  {name: "Alex DeLarge", cohort: :november, hobby: "coding"},
  {name: "The Wicked Witch of the West", cohort: :november, hobby: "cricket"},
  {name: "Terminator", cohort: :november, hobby: "football"},
  {name: "Freddy Krueger", cohort: :november, hobby: "football"},
  {name: "The Joker", cohort: :november, hobby: "rockclimbing"},
  {name: "Joffrey Baratheon", cohort: :november, hobby: "tennis"},
  {name: "Norman Bates", cohort: :november, hobby: "coding"}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each_with_index do |name, index|
    puts "#{index + 1}. #{name[:name]} (#{name[:cohort]} cohort) Favourite hobby is #{name[:hobby]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the name & cohort of the students"
  puts "To finish, just hit return twice"
  students = []
  puts "Please enter name"
  name = gets.chomp
  puts "Please enter cohort"
  cohort = gets.chomp
  puts "Hobby?"
  hobby = gets.chomp

  while !name.empty? do
    cohort_symbol = (cohort == "" ? "Not assigned to cohort" : cohort).to_sym
    students << {name: name, cohort: cohort_symbol, hobby: hobby}
    puts "Now we have #{students.count} students"
    puts "Please enter name"
    name = gets.chomp
    puts "Please enter cohort"
    cohort = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)
