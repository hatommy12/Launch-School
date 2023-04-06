# Rock Paper Scissors

VALID_PLAYERS = %w(rock paper scissors lizard spock)
LETTER_TO_PLAYERS = {
  'r' => 'rock',
  'sc' => 'scissors',
  'p' => 'paper',
  'sp' => 'spock',
  'l' => 'lizard'
}
WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  puts("=> #{message}")
end

def get_player
  loop do
    prompt("Choose one: #{VALID_PLAYERS.join(', ')}")
    player = gets.chomp
    abr_player = LETTER_TO_PLAYERS[player]

    if VALID_PLAYERS.include?(player)
      return player
    elsif VALID_PLAYERS.include?(abr_player)
      return abr_player
    else
      prompt("That's not a valid player.")
    end
  end
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def update_score(first, second, score)
  win?(first, second) ? score + 1 : score
end

def display_results(player, computer, user_score, computer_score)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
  prompt("Your Score: #{user_score}")
  prompt("Computer Score: #{computer_score}")
end

def score_three?(first_score, second_score)
  first_score == 3 || second_score == 3
end

def display_winner(user_score)
  winner = user_score == 3 ? "You are" : "Computer is"
  prompt("#{winner} the grand winner!")
end

def play_again?
  prompt("Do you want to play again?")
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  user_score = 0
  computer_score = 0

  loop do
    player = get_player
    computer_player = VALID_PLAYERS.sample
    system('clear')

    prompt("You chose: #{player}; Computer chose #{computer_player}.")

    user_score = update_score(player, computer_player, user_score)
    computer_score = update_score(computer_player, player, computer_score)

    display_results(player, computer_player, user_score, computer_score)
    break if score_three?(user_score, computer_score)
  end

  display_winner(user_score)
  break unless play_again?
  system('clear')
end

prompt("Thank you for playing!")
