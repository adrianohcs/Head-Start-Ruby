# frozen_string_literal: true

# Get My Number Game
# Written by you!
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..10)

# Track how many guesses the player has made
num_guesses = 0

# Track whether the player has guesses correctly
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i
  num_guesses += 1

  # Compare the guess to the target
  # Print the appropriate message
  if guess < target
    puts 'Oops! Your guess was LOW!'
  elsif guess > target
    puts 'Oops! Your guess was HIGH!'
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

# If player run out of turns, tell them what the number was
puts "Sorry, #{name}! You didn't get my number. (It was #{target}.)" unless guessed_it
