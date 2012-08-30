require File.join(File.dirname(__FILE__), 'player')

describe Player do
  
  before  do
    @initial_health = 100
    @player = Player.new("curly", @initial_health)
  end
  
  it "has a capitalized name" do
    @player.name.should == "Curly"
  end
  
  it "has an initial health" do
    @player.health.should == 100
  end
  
  it "has a string representation" do
    @player.to_s.should == "I\'m Curly with a health of 100 and a score of 105."
  end
  
  it "increases health by 15 when w00ted" do
    @player.w00t
    @player.health.should == @initial_health + 15
  end
  
  it "decreases health by 10 when blamed" do
    @player.blam
    @player.health.should == @initial_health - 10
  end
  
  context "created with a default health" do
    before do
      @player = Player.new("curly")
    end
    
    it "has a rank of 100" do
      @player.health.should == 100
    end
  end
  
  context "with a health of 150" do
    before do
      @player = Player.new("Spork", 150)
    end
    
    it "is strong?" do
      @player.should be_strong
    end
  end

  context "with a health of 100 or less" do
    before do
      @player = Player.new("Spork", 100)
    end
    
    it "is wimpy" do
      @player.should_not be_strong
    end
  end
  
  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)
      
      @players = [@player1, @player2, @player3]
    end
    
    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end
end