require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../hidden_word')
require_relative('../player')

class TestGame < MiniTest::Test

  def setup
    @hidden_word = HiddenWord.new("water")
    @hidden_word2 = HiddenWord.new("nathan")

    @snowman = Game.new("Tim",@hidden_word,[])
    @snowman2 = Game.new("Tim",@hidden_word2,[])

    @player = Player.new("Nathan",6)

  end



  def test_guess_letters_correct
    result = @snowman.guess_letters('w')
    assert_equal(true,result)
  end

  def test_guess_letters_correct
    result = @snowman.guess_letters('c')
    assert_equal(false,result)
  end

  def test_attempt_w
    result = @snowman.attempt('w')
    assert_equal(["w","*","*","*","*"],result)
  end

  def test_attempt_t
    result = @snowman.attempt('t')
    assert_equal(["*","*","t","*","*"],result)
  end

  def test_attempt_e
    result = @snowman.attempt('e')
    assert_equal(["*","*","*","e","*"],result)
  end

  def test_attempt_2_a
    result = @snowman2.attempt('n')
    assert_equal(["n","*","*","*","*","n"],result)
  end





  end
