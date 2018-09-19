require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word')

class TestGame < MiniTest::Test

  def setup

    @hidden_word = HiddenWord.new("water")

  end

  def test_display_word
    result = @hidden_word.display_word
    assert_equal("water",result)
  end

  def test_word_to_array
    result = @hidden_word.word_to_array
    assert_equal(["w","a","t","e","r"],result)
  end

  def test_letter_to_wildcard
    result = @hidden_word.display_wildcard
    assert_equal(["*","*","*","*","*"],result)
  end

  
end
