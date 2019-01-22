class SportsTeam

  attr_accessor :team_name, :player_names, :coach_name, :points

  def initialize(team_name, player_names, coach_name)
    @team_name = team_name
    @player_names = player_names
    @coach_name = coach_name
    @points = 0
  end

  def add_player(new_player)
    @player_names << new_player
  end

  def check_for_player(player_to_check)
    for player in player_names
      if player == player_to_check
        return true
      end
    end
    return false
  end

  def points_for_a_win(result)
    if result.downcase == "won"
      @points += 1
    end
  end

end
