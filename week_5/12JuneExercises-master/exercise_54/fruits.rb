require "byebug"

class NoOrangesError < StandardError
end

class FruitsTree
  
  # attr_writer :
  attr_accessor :age, :height, :fruits 

  def initialize
    # constructor code goes here
    @age = 0
    @height = 0
    @fruits = []
    @max_age = 40
   
  end

  # Ages the tree one year
  def age!
    #tree aging code goes here
    if @age <@max_age
      @age += 1
      @height = @height + 20
      rand(700..1250).times do |fruit|
        fruit = Fruits.new
        fruits<<fruit
      end
      
    else
      @age += 1
    end
     
    
  end

  def any_fruits?
    if @fruits.empty?
        false
    else
        true
    end

    
  end

  def dead?
    # check if tree is dead code goes here
    if @age>@max_age
      return true
    else
      return false
    end

  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_fruits!
    if any_fruits?
      @fruits.pop
    else
        raise NoOrangesError
    end
  end


end


class Fruits
  attr_accessor :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize
    @diameter= rand(5..14)
  end

end
class OrangeTree < FruitsTree
    # super
    attr_accessor :tree

    def initialize
        super
        @max_age = 100
        @tree = "Orange tree"

    end

    def age!
        #tree aging code goes here
        if @age <@max_age
          @age += 1
          @height = @height + 25
          rand(100..300).times do |fruit|
            fruit = Fruits.new
            fruits<<fruit
          end
          
        else
          @age += 2.5
        end
         
        
      end

end


class AppleTree < FruitsTree

    attr_accessor :tree

    def initialize
        super
        @max_age = 45
        @tree = "Apple tree"

    end

    def age!
        if @age <@max_age
          @age += 1
          @height = @height + 20
          rand(400..600).times do |fruit|
            fruit = Fruits.new
            fruits<<fruit
          end
          
        else
          @age += 2
        end
         
        
      end

end

class PearTree < FruitsTree
    # super
    attr_accessor :tree

    def initialize
        super
        @max_age = 40
        @tree = "Pear tree"

    end

    def age!
        #tree aging code goes here
        if @age <@max_age
          @age += 1
          @height = @height + 20
          rand(170..225).times do |fruit|
            fruit = Fruits.new
            fruits<<fruit
          end
          
        else
          @age += 2.5
        end
         
        
      end

end



orange = OrangeTree.new
apple = AppleTree.new 
pear = PearTree.new
tree_s = [orange,apple,pear]
basket = []
array =[]
for i in tree_s
    i.age! until i.any_fruits?

    puts "#{i.tree} is #{i.age} years old and #{i.height} cm tall"
# byebug
    until i.dead?
       

        #It places the oranges in the basket
        #IT PLACES THE ORANGES IN THE basket
        # byebug
        # if i == apple
        while i.any_fruits?
            basket << i.pick_fruits!
        end
        
        array =[]
        basket.each do |orange|
            array<<orange.diameter
        end
        total = array.inject{|acc,el| acc+el}
        avg_diameter = total/basket.size  # It's up to you to calculate the average diameter for this harvest.

        puts "Year #{apple.age} Report"
        puts "#{apple.tree} height: #{apple.height/100.0} m"
        puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
        puts ""
        
        # =====================================
        
        puts "Year #{orange.age} Report"
        puts "#{orange.tree} height: #{orange.height/100.0} m"
        puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
        puts ""

        #Age the tree another year
        i.age!
    end

end
# total = array.inject{|acc,el| acc+el}
# avg_diameter = total/basket.size  #

# puts "Year #{apple.age} Report"
# puts "#{apple.tree} height: #{apple.height/100.0} m"
# puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
# puts ""

# # =====================================

# puts "Year #{orange.age} Report"
# puts "#{orange.tree} height: #{orange.height/100.0} m"
# puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
# puts ""



puts "Alas, the tree, she is dead!"
