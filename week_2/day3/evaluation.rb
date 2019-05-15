puts
puts "This is the number Game"
puts

def evaluate(a)
    if a <=50
        puts "Your number is between 0 and 50 , correct:)"
    else
        puts "Your number is between 51 and 100, correct :) "
    end
end

print " Enter the nubmer between 0 - 100: "
num = gets.chomp.to_i
puts

while num >100 || num <0
    if num > 100
        puts "please enter the number 100 and below"
        print "try again: "
        num = gets.chomp.to_i
    else num < 0
        
        puts "please enter number between 0 - 100. NOT number below zero" 
        
    end
end
puts evaluate num
puts
