#This is a 2 players game  our AI instructor introduced to us during AI class
#The point of the game is to choose a number between 1 and 10 in  each turn
#The player that reach's 100 wins
#The Perfect number to trap the other player at is 89,
#so whatever number (s)he enter's will be less than 100
require 'game.rb'
sum = 0
while true
  puts 'Please choose a difficulty', '1. for easy', '2. for normal',  '3.for hard', '4.for impossible'
  diff = gets.to_i
  if diff < 1 || diff > 4
    puts 'You have entered a wrong number'
    next
  else
    break
  end

end

g = Game.new(diff)
while true
  puts 'Please enter a number between 1 and 10'
  playerNumber = gets.to_i
  if playerNumber < 1 || playerNumber > 10
    puts 'You have entered a value out of range'
    next
  else
    sum += playerNumber
    checkPlayer = true
    puts 'sum is : ' + sum.to_s
    break if sum >= 100
    cpuNumber = g.calculateCpuNumber(sum,diff)
    sum += cpuNumber
    checkPlayer = false
    puts 'Computer has chosen : ' + cpuNumber.to_s
    puts 'sum is : ' + sum.to_s
    break if sum >= 100
  end

end

if checkPlayer
  puts 'You Win'
else
  puts 'You Lose', 'GAME OVER'
end
