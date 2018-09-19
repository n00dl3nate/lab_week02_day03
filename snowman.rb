
require_relative('./game')
require_relative('./hidden_word')
require_relative('./player')




p "Please Enter a Word "
word = gets.chomp!
puts `clear`

puts "Please Enter Your Name?"
player1 = gets.chomp!

puts "Okay Now Pass The Laptop Too The Guesser"
puts "Please Enter Your Name?"

player2 = gets.chomp!

hidden_word = HiddenWord.new(word)
game = Game.new(player1,hidden_word)
player = Player.new(player2)


actual_word = hidden_word.word_to_array
wild_card = hidden_word.display_wildcard

puts "Please Enter a Letter? "
guess = gets.chomp!.downcase
  while guess.length != 1
    puts "Please Enter One Letter!"
    guess.downcase = gets.chomp!
  end

  while word.split(//) != wild_card

      if game.guess_letters(guess) == true
        puts "You guessed Correct"
        wild_card = game.attempt(guess)



      elsif game.guess_letters(guess) == false
        puts "\n You guessed Incorrect"
        player.take_lives
        puts "\n You lost a life you have #{player.live_count} lives left!"
      end

      if player.live_count == 0
        puts "\n You lost and do not have any lives left, #{player1} Wins the game!"
        break
      end


      if game.check_letters(guess) == true
        puts "\n You've already used this letter!"
      else
        game.letters_guessed(guess)
      end


      if wild_card == actual_word

        # "\n Well Done You get #{player1.points_count}"
        break
      end

      if game.letters_guessed_array.length() > 0
        puts "\n The letters you used: #{game.letters_guessed_array.join(", ")}"
      end

    print wild_card.join(' ').upcase



    puts "\n Please Enter a Letter? "
    guess = gets.chomp!.downcase

  end

  if wild_card == actual_word
    puts "\n Well Done #{player2}, You found the word #{actual_word.join}"
  end
