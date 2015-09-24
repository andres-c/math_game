require_relative "player.rb"
require_relative "question.rb"

def play(player)
  question = question_generate 
  puts "#{player.name} what is the answer to #{question}"
  player_answer = STDIN.gets.chomp.to_i
  answer = eval(question)

  if player_answer == answer
    player.points += 1 
    puts "Correct! You now have #{player.points} point(s)"
  else puts "Incorrect! The answer is #{answer}, you've just lost a life!"
    player.lives -= 1 
    puts "You now have #{player.lives} lives #{player.name}"
  end
end

puts "Welcome to Math Quiz, each player has 3 lives.\nOne wrong answer means one less life!"

puts "Enter in your name Player 1"
name = gets.chomp
@one = Player.new(name)

puts "Enter in your name Player 2"
name = gets.chomp
@two = Player.new(name)

loop do
  puts play(@one)
break if @one.lives == 0
  puts play(@two)
break if @two.lives == 0
end





