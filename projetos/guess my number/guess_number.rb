# frozen_string_literal: true

puts 'Welcome to Guess My Number!'
print "What's your name?"

# Nome através do input do usuário
# 'Chomp' p/ retirar a newline após a entrada
input = gets
name = input.chomp
puts "Welcome, #{name}!"
