require_relative 'game.rb'
require 'minitest/autorun'


describe "RockPaperScissors" do
    it "returns 'Player 1 wins when rock vs scissors'" do
        #assert_equal(true, false)
        #Assemble
        #Act
        result = RockPaperScissors.new.play("rock", "scissors")
        #Assert
        assert_equal('Player 1 Wins', result)
    end


    it "returns 'Player 1 wins when scissors vs paper'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("scissors", "paper")
      #Assert
      assert_equal('Player 1 Wins', result)
    end


    it "returns 'Player 2 Wins when scissors vs rock'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("scissors", "rock")
      #Assert
      assert_equal('Player 2 Wins', result)
    end

    it "returns 'Player 2 Wins when paper vs scissors'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("paper", "scissors")
      #Assert
      assert_equal('Player 2 Wins', result)
    end


    it "returns 'Player 2 Wins when rock vs paper'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("rock", "paper")
      #Assert
      assert_equal('Player 2 Wins', result)
    end



    it "returns 'Player 1 Wins when paper vs rock'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("paper", "rock")
      #Assert
      assert_equal('Player 1 Wins', result)
    end



    it "returns 'Tie' when paper vs paper'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("paper", "paper")
      #Assert
      assert_equal('Tie', result)
    end


    it "returns 'Tie' when scissors vs scissors'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("scissors", "scissors")
      #Assert
      assert_equal('Tie', result)
    end



    it "returns 'Tie' when rock vs rock'" do
      #assert_equal(true, false)
      #Assemble
      #Act
      result = RockPaperScissors.new.play("rock", "rock")
      #Assert
      assert_equal('Tie', result)
    end

end