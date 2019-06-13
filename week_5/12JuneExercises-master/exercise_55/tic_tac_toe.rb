require "byebug"

class Board
    @@score
    def initialize


        #track and store moved or maked places by plaers
        @moved_1 
        @moved_2
        @positions_record
        @position 
        @mark
    end

    def won?
        if @moved_1.sum == 15 ||@moved_2 ==15
            true
        else
            false
        end
    end

    def winner
        if @moved_1.sum == 15
            return @player_1
        else
            return @player_2
        end
    end

    def empty?(pos)
    end

    def mark_place(pos, mark)

        @position<
        
    end

    def print_board
        board_square ={}
        for i in 1..9
            board_square[i] = "   |"
        end 

        def grid(board_square)
            puts
            print "        |", board_square[1],board_square[2],board_square[3]
            puts
            puts "        "+" -- " *3
            print "        |",board_square[4],board_square[5],board_square[6]
            puts
            puts "        "+" -- " *3
            print "        |",board_square[7],board_square[8],board_square[9]
            puts
            puts "        "+" -- " *3

        end
        board_square[1]=" X |"
        board_square[9]=" Y |"
        puts grid(board_square)
    end


    #More methods needed... What are they?
end

# More classes needed... What are they?

class Game

    @@move
    def initialize(player,bot)
        @bot_move
        @player = player
        @bot = bot
        @move= Hash.new {|h,k| h[k] = [] }


    end

# byebug
    def winning_points
        count = []
        for i in 1..9
            count<<i
        end
        
        array= count.combination(3).to_a
        my_special_num = array.select{|num|num if num.sum == 15}
        # p magic_num
        # posiible_move = 0
        
        for i in 1..my_special_num.size-1
            my_special_num.each do |number|
                if number.include?i
                    @move[i]<<number
                    # posiible_move += 1
                else
                    next
                end
            end
        
        end
        @move

    end
byebug
    def get_move(player_move,bot_move)
      

        # by this time the bot has 19 possible move and 8 poissible  winning combinations stored in the @@move
        # get the move number
        @move.each do |key,val|
            if @bot_move==nil
                # the bot start from random number
                @bot_move=rand(1..9)
            elsif val[opponant_move].include?@bot_move
                # byebug
            # puts key[opponant_move]
                @bot_move=val[opponant_move+1]
            else
                @bot_move = val[1]
                
            end

            # byebug

        end
    end

    

    private :winning_points


end

class Bot
    @@move
    @@move=[]

    def initialize 

        @opponant


    end

   


    def posiible_move?

        if move.include?@move_num
            true
        else

            false
        end

    end

    def move
        # if posiible_move?
        #     return 
    end

end


# =====================================================

# count = 1..9
# count = []
# for i in 1..9
#     count<<i
# end

# array= count.combination(3).to_a
# magic_num = array.select{|num|num if num.sum == 15}
# # p magic_num
# posiible_move = 0
# move = Hash.new {|h,k| h[k] = [] }
# for i in 1..magic_num.size-1
#     magic_num.each do |number|
#         if number.include? i
#             move[i]<<number
#             posiible_move += 1
#         else
#             next
#         end
#     end

# end

# p "There are #{posiible_move} posiible move as followr \n #{move}"

# puts
# puts "There is #{move[1].size} possible move for 1 "

# ===============================================
