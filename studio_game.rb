class Player
  attr_accessor :name, :health
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def score
    @name.length + @health
  end
  
  def to_s
    "I\'m #{name} with a health of #{health} and a score of #{score}."
  end
end

player1 = Player.new("Moe")
player2 = Player.new("Curly", 125)
player3 = Player.new("larry", 60)

players = [player1, player2, player3]

#puts "There are #{players.size} players in the game:"
#
#players.pop
#player4 = Player.new("Shemp", 90)
#players.push(player4)
#
#players.each do |player|
#  player.blam
#  player.w00t
#  player.w00t
#  puts player
#end

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def play
    puts "There are #{@players.size} players in #{@title}:"
    
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      player.w00t
      puts player
    end
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

player4 = Player.new("Alvin", 100)
player5 = Player.new("Simon", 60)
player6 = Player.new("Theo", 125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play