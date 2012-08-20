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
  
  #if __FILE__ == $0
    player1 = Player.new("moe")
    player2 = Player.new("larry", 60)
    player3 = Player.new("curly", 125)
    player4 = Player.new("Alvin", 100)
    player5 = Player.new("Simon", 60)
    player6 = Player.new("Theo", 125)
    
    players = [player1, player2, player3, player4, player5, player6]
    
    players.each do |player|
      puts player
    end
  #end
end

require File.join(File.dirname(__FILE__), 'player')

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