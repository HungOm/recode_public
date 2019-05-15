
puts

print "Enter a four digit numbers: "
four_digit = gets.chomp
number = four_digit.to_i
T = number / 1000
hdreds = number% 1000 /100
tns = number% 100 /10
ones = number% 10

puts "The thousands place is #{T}"
puts "The hundreds place is #{hdreds}"
puts "The tens place is #{tns}"
puts "The one place is #{ones}"