puts
puts "This is the second exercise"

print " Please enter the first number: "
num1 = gets.chomp.to_i
print "enter the second number: "
num2 = gets.chomp.to_i


def add(a,b)
    a + b

end

# puts add(num1,num2)

def subtraction(a,b)
    a - b 
end

def multiplication(a,b)
    a * b 
end
def division(a,b)
    a/b  
end

def remainder a,b 
    a % b  
end


puts "Please enter type of operation your like perform: " 
print "e.g divide, multiply ,modulus ,addition and subtracktion: "
operation=gets.chomp.downcase
if operation == "addition" || operation== "add"
    puts "The addition of #{num1} and #{num2} is #{add num1,num2}"

elsif operation=="subtraction" || operation == "subtract"
    puts "THe subtracted result of #{num2} from #{num1} is #{subtraction num1,num2}" 
elsif operation == "multiplication" || operation == "multiply"
    puts "The multiplication of #{num1} and #{num2} is #{multiplication num1,num2}"

elsif operation == "division" || operation=="divide"
    puts "The division of #{num1} and #{num2} is #{division num1,num2}"
elsif operation =="modulus" || operation=="remainder"
    if remainder(num1,num2) != 0    
        puts "The remainder of #{num1} devided by #{num2} is #{remainder num1,num2}"
    else 
        puts "It is an even number"
    end
    
end

# print "Enter a four digit numbers: "
# four_digit = gets.chomp
# number = four_digit.to_i
# T = number / 1000
# hdreds = number% 1000 /100
# tns = number% 100 /10
# ones = number% 10

# puts "The thousands place is #{T}"
# puts "The hundreds place is #{hdreds}"
# puts "The tens place is #{tns}"
# puts "The one place is #{ones}"







