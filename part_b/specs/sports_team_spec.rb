require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test


  def setup()
    players = ["John", "David", "Mac"]
    @sportsteam = SportsTeam.new("The Coders", players, "Mr Jackson")
  end
  

  def test_get_team_name

    assert_equal("The Coders", @sportsteam.name)
  end

  def test_get_team_players
    players = @sportsteam.players
    assert_equal(3, players.count)

  end

  def test_get_team_coach
    assert_equal("Mr Jackson", @sportsteam.coach)
  end

  def test_set_team_coach
    @sportsteam.set_coach("Mr Bain")
    assert_equal("Mr Bain", @sportsteam.coach)
  end

  def test_add_new_player
    @sportsteam.add_player("Messi")
    result = @sportsteam.players  #grab players from team
    assert_equal(4, result.count)
  end

  def test_player_is_in_team
    result = @sportsteam.is_player_in_team("John")
    assert_equal(true, result)
  end

  def test_team_has_points
    assert_equal(0, @sportsteam.points)
  end

  def test_team_updates_points_for_win
    @sportsteam.hasWon(true)
    assert_equal(3, @sportsteam.points)
  end

end
