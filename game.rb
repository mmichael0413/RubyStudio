require File.join(File.dirname(__FILE__), 'player')
require File.join(File.dirname(__FILE__), 'die')
require File.join(File.dirname(__FILE__), 'game_turn')

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
      GameTurn.take_turn(player)
      puts player
    end
  end
end
