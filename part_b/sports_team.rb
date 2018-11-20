class SportsTeam

  attr_reader :name, :players, :points
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name #string
    @players = players #array of strings
    @coach = coach #strings
    @points = 0
  end

  def name()
    return @name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end


  def set_coach(new_coach)
    @coach = new_coach
  end


  def add_player(new_player)
    @players.push(new_player)
  end

  def is_player_in_team(player_name)
    boolean = @players.include?(player_name)
    return boolean
  end

  def hasWon(boolean)
    if boolean == true
      @points += 3
    end
  end



end
