require File.join(File.dirname(__FILE__), 'player')
require File.join(File.dirname(__FILE__), 'die')

module GameTurn
  def self.take_turn(player)
    @players.each do |player|
      die = Die.new
      
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player} got skipped"
      else
        player.w00t
      end
    end
  end
end