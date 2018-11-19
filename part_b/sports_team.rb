class SportsTeam

  attr_reader :team_name, :players
  attr_accessor  :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name #string
    @players = players #array of strings
    @coach = coach #strings
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  #
  # def set_coach(coach_name)
  #     @coach = coach_name
  #   end
  def add_new_player(new_player)
    return @players.push(new_player)
  end

  def check_if_player_exists(player_name)
    return @players.include?(player_name)
  end

  def team_result(result)
    if result == "win"
      @points += 2
    else result == "loss"
      @points += 0
    end
  end

end
