class Game

  attr_accessor :player ,:hidden_word ,:guess

  def initialize(player, hidden_word)

    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []

  end

  def guess_letters(guess)
  hidden = @hidden_word.word_to_array
    for letter in hidden
      if letter == guess
      return true
      end
    end
    return false
  end

  def attempt(guess)
    count = 0
    actual_word = @hidden_word.word_to_array
    hidden_word = @hidden_word.hidden_word
    for letter in actual_word
      if letter == guess
        hidden_word[count] = letter
        count += 1
      else
        count += 1
      end
    end
    return hidden_word
  end

  def letters_guessed(guess)
    @guessed_letters << guess
  end

  def letters_guessed_array
    return @guessed_letters
  end

  def check_letters(guess)
    for letter in letters_guessed_array
      if letter == guess
        return true
      end
    end
    return false
  end


end
