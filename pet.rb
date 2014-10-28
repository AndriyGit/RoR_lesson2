class Pet

  def initialize(name, kind_of)
    @name = name
    @kind_of = kind_of
    @weight = 1
    @want_to_eat = rand(10) + 1          # 1..10, 1 - no hungry, 10 - very hungry
    @want_to_sleep = rand(10) + 1        # 1..10, 1 - don't want to sleed, 10 - want to sleep very much
    @mood = rand(10) + 1                 # 1..10, 1 - very bad mood, 10 - very good mood
    @carnivorous = true                  # true if yes, or false if no
    @age = 1                             # count in hours, which your pet live

    puts "Congradulation! You have a #{@kind_of} with next params:"
    puts "Name - #{@name}"
    puts "Weight - #{@weight}"
    puts "Available commands to play this game:"
    puts "1 - Feed"
    puts "2 - Put to sleep"
    puts "3 - Play with your pet"
    puts "4 - Get info about your pet"
    puts "5 - Exit (Warning! If you do it, you are killing your pet!)"
  end

  def feed
    @mood += 2
    @want_to_eat -= 3
    @weight += 0.3
    mature
  end

  def put_to_sleep
    @want_to_sleep -= 3
    @mood += 2
    mature
  end

  def play_game
    @mood += 2
    mature
  end

  def die
    puts "You are a bad! Your pet is dead!"
    exit
  end

  def get_info
    puts "Params of your pet:"
    puts "Age - #{@age}"
    puts "Want to eat - #{@want_to_eat}"
    puts "Weight - #{@weight}"
    puts "Want to sleep - #{@want_to_sleep}"
    puts "Mood - #{@mood}"
    carn = @carnivorous ? "yes" : "no"
    puts "Carnivorous - #{carn}"
    action
  end

  def action
    puts "What would you like to do with your pet?"
    action = gets.chomp
    case action.to_i
      when 1
        feed
      when 2
        put_to_sleep
      when 3
        play_game
      when 4
        get_info
      when 5
        die
    end
    
  end

  private

  def mature
    die if @want_to_eat > 15 || @want_to_sleep > 20
    @want_to_eat += 2
    @want_to_sleep += 2
    @age += 3
    action
  end


end

puts "What kind of animal do you like?"
kind_of = gets.chomp
puts "What is name of your animal?"
name = gets.chomp

kitty = Pet.new(name, kind_of)
kitty.action
