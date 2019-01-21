require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestBankAccount < MiniTest::Test

  def setup
    player_names = ['John, Shane','Kurt, Russel','Patrick Stewart']
    @team = SportsTeam.new("Warriors",player_names,'Ross Wheeler')
  end

  def test_get_team_name
    assert_equal("Warriors",@team.team_name)
  end

  def test_get_player_names
    player_names = ['John, Shane','Kurt, Russel','Patrick Stewart']
    assert_equal(player_names,@team.player_names)
  end

  def test_get_coach_name
    assert_equal("Ross Wheeler",@team.coach_name)
  end

  def test_add_player_to_team
    @team.add_player("Jamie, Bobbie")
    assert_equal(4,@team.player_names.count)
  end

  def test_looking_for_player
    assert_equal(true,@team.check_for_player("Kurt, Russel"))
  end

  def test_check_points
    assert_equal(0,@team.points)
  end

  def test_check_if_team_won
    assert_equal(1,@team.team_win_or_lose("win"))
  end


end
