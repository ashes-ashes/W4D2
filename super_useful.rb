# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError; end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit.downcase == "coffee"
    raise CoffeeError
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
rescue CoffeeError
  puts "I love coffee! But its not a fruit..."
  retry
rescue StandardError
  puts "This is not a fruit! >:("
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise ArgumentError, "You can't be my best friend if you don't know my name!" if @name.length == 0
    @yrs_known = yrs_known
    raise ArgumentError, "I've only known you for #{yrs_known} years?" if yrs_known < 5
    @fav_pastime = fav_pastime
    raise ArgumentError, "We can't be best friends if we never do things together!" if @fav_pastime.length == 0
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


