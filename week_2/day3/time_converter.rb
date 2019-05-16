
puts "This is great!"

# morning = (1..12)
def double_zero(a)
    if a == 0
        return a = "00"
    else
        a
    end
end


print "Please enter hour in two digit  : "

hour = gets.chomp.to_i
while hour >24 ||hour <0
    print "please enter a valid time: "
    hour = gets.chomp.to_i
end

# if hour == 0
#     return hour ="0" + "0"
#     puts hour
# else
#     hour
# end


puts "hEYYY #{hour}"
# 
print "Please enter minuts: "
min = gets.chomp.to_i
while min >60 || min<0
    print "please enter a valid time format: "
    min = gets.chomp.to_i
end 

minuts = double_zero min
puts minuts


def hours(a)
    # if a>24 
    #     print "please enter a valid time up to 24 and below: "
    #     a = gets.chomp.to_i
    # elsif a<1
    #     print "plese enter a valid time between 1 and 24: "
    # if a == 00
    #     return 12
    if a ==13
        return 1
    elsif a ==14
        return 2
    elsif a ==15
        return 3
    elsif a == 16
        return 4
    elsif a == 17
        return 5
    elsif a == 18
        return 6
    elsif a == 19
        return 7
    elsif a == 20
        return 8
    elsif a == 21
        return 9
    elsif a == 22
        return 10
    elsif a == 23
        return 11
    else
        return 12
    end
end


time = case hour
    when 0..11 then "It's #{double_zero hour}"+":"+"#{minuts} AM in standard time!"
    when 12..24 then "It's #{hours hour}"+":"+"#{minuts} PM in standard time!"
    else "Invalid times format!"
end


puts time
