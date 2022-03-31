# frozen_string_literal: true

puts 'Welcome to Guess My Number!'
print "What's your name?"

# Nome através do input do usuário
# 'Chomp' p/ retirar a newline após a entrada
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Armazena um número aleatório entre 1 e 100
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100) # equivale a rand(100)+1
