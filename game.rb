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
