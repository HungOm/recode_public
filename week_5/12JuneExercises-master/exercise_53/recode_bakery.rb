
require "byebug"

class Bakery
    
    def initialize(cookies,time)
        @cookie_tray =Hash.new(0)
        # @oven
    end


    def prepare?
        if @cookie_tray.empty?
            false
        else
            true
        end
    end


end
# byebug
class Cookie
    attr_accessor :cookie, :cookie_count, :bake_time
    @@cookie_count = 0
    def initialize(cookie)
        @cookie = cookie
        @@cookie_count += 1
        @bake_time
    end

    def cookie_type

        # to create separete class for each...(manually created)
        [{"Chocolate chip"=>15},{"Sugar cookie " =>20},{"Oreo"=>12},{"Oatmeal Cookies"=>30}]
    end




end

# =====================================***========================================
#                              end of cookie class
# ===================================== *** =====================================
# byebug
class Oven

    attr_accessor :time, :cookies
    def initialize
        super
        @time = time
        @cookies =[]
        @bake_time = []
    end


    # def timer
    #     if !@cookies.empty?
    #         # random is not neccessary but to make it eaiser intead of manually defining duration of baking each cookie type 
    #         # @cookie.each{|key,va|@bake_time[key]=rand(4,8)}
    #         @cookies.each do|key,val|
                


    #     end
    # end

    def get_cookie(cookie)
        new_cookie = Cookie.new(cookie)
        @cookies<<new_cookie.cookie
        # new_cookie.cookie
    end



    def completed?
        if @cookies.empty?
            true
        else
            false
        end
    end


    def bake
        
        
    end


end






# cookie = Cookie.new("Chochalate")
# p cookie.cookie




# DRIVER CODE




#Diplay the available cookilist
# ================================

available_cookies = ["Chocolate chip","Sugar cookie ", "Oreo","Oatmeal Cookies"]
tray=[]
num =1
while num< available_cookies.size+1

    puts "#{num} #{available_cookies[num-1]}"
    num += 1
end


# pick a cook from the list
# ==========================


print " pick a number for your favorite cookie "
cookie_ = gets.chomp
tray<<available_cookies[cookie_.to_i-1]

while cookie_ != "no" 
    puts "picked list"
    for i in tray       
        puts " == #{i}"
    end
    cookie_ = cookie_
    if available_cookies.include? available_cookies[cookie_.to_i-1]
        print "Would like choose more? "
        cookie_ = gets.chomp
        tray<<available_cookies[cookie_.to_i-1]

    else
        print "Please choose from the list : "
        cookie_ = gets.chomp
    end

    
end
# byebug

# set time 
# ======-==

print "Please enter number to set the time to bake teh cookie: e.g 5 mins "
baking_duration= gets.chomp.to_i
bake_time = baking_duration
for x in bake_time.downto(1) do
    puts x
end


# byebug
bakery = Oven.new
# bakery.get_cookie(tray[1])

# puts bakery.get_cookie(tray[1])


unless !bakery.completed?
    tray.each do |item| 
        bakery.get_cookie(item)
        # bakery.bake(baking_duration)
    end
    print bakery.cookies
end

# end














        