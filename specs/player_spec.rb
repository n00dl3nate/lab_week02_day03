require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class TestGame < MiniTest::Test

  def setup

    @player = Player.new("Nathan",6)

  end

  def test_get_name
    assert_equal("Nathan", @player.name)
  end

    def test_live_count
      assert_equal(6, @player.live_count)
    end

    def test_take_lives
      assert_equal(5, @player.take_lives)
    end












  end
