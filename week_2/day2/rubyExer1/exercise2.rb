puts
puts "This is the second exercise"

print " Please enter the first number: "
num1 = gets.chomp.to_i
print "enter the second number: "
num2 = gets.chomp.to_i

def add(a,b)
    a + b
end

puts add(num1,num2)

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

puts "THe subtracted result of #{num2} from #{num1} is #{subtraction num1,num2}"
puts "The addition of #{num1} and #{num2} is #{add num1,num2}"
puts "The multiplication of #{num1} and #{num2} is #{multiplication num1,num2}"
puts "The division of #{num1} and #{num2} is #{division num1,num2}"
puts "The remainder of #{num1} devided by #{num2} is #{remainder num1,num2}"
