require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test


  def setup()
    @sportsteam = SportsTeam.new("The Coders", ["John", "David", "Mac"], "Mr Jackson", 0)
  end


    def test_get_team_name
      assert_equal("The Coders", @sportsteam.team_name())
    end

    def test_get_team_players
      assert_equal(["John", "David", "Mac"], @sportsteam.players())
    end

    def test_get_team_coach
      assert_equal("Mr Jackson", @sportsteam.coach())
    end

    def test_set_team_coach
      @sportsteam.coach = "Mr Bain"
      assert_equal("Mr Bain", @sportsteam.coach())
    end

    def test_add_new_player
      @sportsteam.add_new_player("Jen")
      assert_equal(["John", "David", "Mac", "Jen"], @sportsteam.players())
    end

    def test_check_if_player_exists
      assert_equal(true, @sportsteam.check_if_player_exists("David"))
    end

    def test_result_win
      assert_equal(2, @sportsteam.team_result("win"))
    end

end
