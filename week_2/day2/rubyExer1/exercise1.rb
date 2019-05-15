puts
puts "This is first greeting program with Ruby"
puts
puts "Hello , dear friend !"
print "Nice to have you here.please enter first name : "
first_name = gets.chomp
print "your last name: "
last_name=gets.chomp
print "your age: "
age =gets.chomp

puts "Thank you. Your fullname is " + first_name + " " + last_name 
puts "You are now #{age} years old:)"
puts "You will be #{age.to_i + 10} years old in #{10} years."
puts "You will be #{age.to_i + 20} years old in #{20} years."
puts "You will be #{age.to_i + 30} years old in #{30} years."
puts "You will be #{age.to_i + 40} years old in #{40} years."
puts "Have a nice day!"
puts