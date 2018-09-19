class HiddenWord

  attr_accessor :word, :hidden_word

  def initialize(word)

    @word = word
    @hidden_word = display_wildcard()

  end

  def display_word
    return @word
  end

  def word_to_array
    return @word.split(//)
  end

  # def letter_to_wildcard()
  #
  #   for letter in word
  #


  def display_wildcard
    wildcard = word_to_array
    counter = 0
    for letter in wildcard
      letter = "*"
      wildcard[counter] = "*"
      counter += 1
    end
    return wildcard
  end


  


end
