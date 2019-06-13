# board_square ={}
# # print "     ---" * 3

# for i in 1..9
#     board_square[i] = "   |"
# end 

# def board(board_square)
#     puts
#     print "        |", board_square[1],board_square[2],board_square[3]
#     puts
#     puts "        "+" -- " *3
#     print "        |",board_square[4],board_square[5],board_square[6]
#     puts
#     puts "        "+" -- " *3
#     print "        |",board_square[7],board_square[8],board_square[9]
#     puts
#     puts "        "+" -- " *3

# end
# board_square[1]=" X |"
# board_square[9]=" Y |"
# puts board(board_square)
# puts board_square

# count = 1..9
count = []
for i in 1..9
    count<<i
end

array= count.combination(3).to_a
magic_num = array.select{|num|num if num.sum == 15}
# p magic_num
posiible_move = 0
move = Hash.new {|h,k| h[k] = [] }
for i in 1..magic_num.size-1
    magic_num.each do |number|
        if number.include? i
            move[i]<<number
            posiible_move += 1
        else
            next
        end
    end

end

p "There are #{posiible_move} posiible move as followr \n #{move}"

puts
puts "There is #{move[1].size} possible move for 1 "
