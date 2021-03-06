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
  
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}:"
    
    @players.each do |player|
      puts player
    end
      
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end
  
  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end
  
  def print_stats
    strong_players, wimpy_players = @players.partition { |p| p.strong? }
    
    puts "\n#{@title} Statistics:"
    
    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end
    
    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end
    
    #sorted_players = @players.sort { |a,b| b.score <=> a.score }
    
    puts "\n#{@title} High Scores:"
    
    @players.sort.each do |player|
      puts "#{player.name.ljust(20, '.')} #{player.score}"
    end
  end
end
