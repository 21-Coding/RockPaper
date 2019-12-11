class RPS
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def win?
    if (@player_one == "rock") & (@player_two == "scissors")
      "Player 1 wins!"
    elsif (@player_two == "rock") & (@player_one == "scissors")
      "Player 2 wins!"
    elsif (@player_one == "scissors") & (@player_two == "paper")
      "Player 1 wins!"
    elsif (@player_two == "scissors") & (@player_one == "paper")
      "Player 2 wins!"
    elsif (@player_one == "paper") & (@player_two == "rock")
      "Player 1 wins!"
    elsif (@player_two == "paper") & (@player_one == "rock")
      "Player 2 wins!"
    end
  end

  def tie?
    if (@player_one == @player_two)
      "Tie!"
    end
  end
end
