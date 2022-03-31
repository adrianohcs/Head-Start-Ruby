# frozen_string_literal: true

class Bird
  def talk
    puts 'Chirp! Chirp!'
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Dog
  def make_up_name
    @name = 'Sandy'
  end

  def talk
    puts "#{@name} says bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Cat
  def talk
    puts 'Meow!'
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

dog.make_up_name
dog.move('yard')
dog.make_up_age
dog.report_age

bird.move('tree')
bird.talk
cat.move('house')
