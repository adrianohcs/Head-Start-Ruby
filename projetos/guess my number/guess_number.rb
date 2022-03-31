# frozen_string_literal: true

puts 'Welcome to Guess My Number!'
print "What's your name? "

# Nome através do input do usuário
# 'Chomp' p/ retirar a newline após a entrada
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Armazena um número aleatório entre 1 e 100
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100) # equivale a rand(100)+1

# Armazena quantas tentativas o jogador gastou
num_guesses = 0

# Indicador se o jogador acertou ou não
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} left."
  print 'Make a guess: '
  guess = gets.to_i # Transforma a saída do console em integer
  num_guesses += 1 # A cada etapa do loop o jogador usa uma tentativa

  if guess > target
    puts 'Your guess was too HIGH! Try again.'
  elsif guess < target
    puts 'Your guess was too LOW! Try again.'
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You got my number in #{num_guesses} guesses."
  end
end

# Caso o jogador perca o jogo, retorna qual era o número
puts "Sorry, #{name}... You ran out of tries. BTW my number was #{target}." unless guessed_it
# Mesmo que: unless guessed_it; puts "Sorry, #{name}... You ran out of tries. BTW my number was #{target}."; end
