require './lib/board.rb'
require './lib/game.rb'
require './lib/player.rb'
puts "_1_|_2_|_3_\n_4_|_5_|_6_\n 7 | 8 | 9"
puts "Lets play!"

players=[Player.new("p1",'X'), Player.new('p2','O')]
board=Board.new
game=Game.new(board, players)

until game.over?
  players.each do |player|
    unless game.over?
    puts "#{player.name}, ur turn, print the cell number"
    puts board.show
    board.put(player,(gets.chomp).to_i)
    end
    end
end
puts "#{board.show}"
puts "game over. #{game.winner} won, yoho"

