puts
puts "This is person greeter program"
puts

print "Hi there, please enter your name here: "
PERSON =gets.chomp
print "What is your gender? : "
gender =gets.chomp.downcase 
# puts GENDER

def your_age(a)
    if a<20
        puts " You are below 20!"
    elsif a >= 20 && a <= 40 
        puts "You are between 20 and 40 years old wonderful human being!"
    else 
        puts "Are you that old? above 40s?" 
        puts "just kidding"
    end
end


# if gender != "male" || gender != "female"
#         print "What is your gender? : "
#         gender =gets.chomp.downcase 
#         break if gender == "male" || gender=="female"

# break if
if gender === "male"
    print "Hello Mr.#{PERSON.capitalize} may i know what is your age?: "
    age = gets.chomp.to_i
    puts your_age age
elsif gender==="female"
    print "Hello Mrs.#{PERSON.capitalize} may i know what is your age?: "
    age_num = gets.chomp.to_i
    puts your_age age
else 
    puts "Sorry I do not recognize your gender"

end

# puts "Heyy"

# ======================================================================




