class RPS
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def win?
    if (@player_one == "rock") & (@player_two == "scissors") | (@player_two == "rock") & (@player_one == "scissors")
      true
    elsif (@player_one == "scissors") & (@player_two == "paper") | (@player_two == "scissors") & (@player_one == "paper")
      true
    elsif (@player_one == "paper") & (@player_two == "rock") | (@player_two == "paper") & (@player_one == "rock")
      true
    end
  end

  def lose?
    if (@player_one == "scissors") & (@player_two == "rock") | (@player_two == "scissors") & (@player_one == "rock")
      true
    elsif (@player_one == "paper") & (@player_two == "scissors") | (@player_two == "paper") & (@player_one == "scissors")
      true
    elsif (@player_one == "rock") & (@player_two == "paper") | (@player_two == "rock") & (@player_one == "paper")
      true
    end
  end

  def tie?
    if (@player_one == @player_two)
      "Tie!"
    end
  end
end
