puts
puts "This is the second exercise"

print " Please enter the first number: "
num1 = gets.chomp.to_i
print "enter the second number: "
num2 = gets.chomp.to_i




#operations methods
# ==================


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
# =======================================

# place of number 
# ==============
def place(a)
    choice_range ==("1st","10th","100th","1000th","10,000th","100,000th")
    if a.length >7
        puts "The number is too high ... I need super brain to do that! :("
    elsif a.length == 6
        puts "Choice place, eg 100,000th  10,000th 1,000th 100th 10th or 1st ? : "
        choice = gets.chomp.downcase
        while choice_range != choice
            print "Please enter 100th to  1s th"
            choice = gets.chomp.downcase
            
            
        end
        if choice == "100,000th"
            return "The 100th thousands place of #{a} id  #{a /10000}!"
        elsif choice == "10,000th"
            return "The 10th thousands place of #{a} is #{a/10000%100}"
        elsif choice == "1,000th"
            return "The thousanth place of #{a} is #{a/10000%10}"
        elsif choice == "100th"
            return "THe 100th place of #{a} is #{a/100%10}"
        elsif choice == "10th"
            return "The 10th place of #{a} is #{a/10%10}"
        else choice == "1st"
            return "The 1st place of #{a} is #{a/10}"
        end
    elsif a.length ==5
            
        
    






print "Enter a four digit numbers: "
four_digit = gets.chomp
number = four_digit.to_i
T = number / 1000
hdreds = number% 1000 /100
tns = number% 100 /10
ones = number% 10


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







