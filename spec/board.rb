require '../lib/board'
require '../lib/player'
require '../lib/game'


player=Player.new('p1','O')
board = Board.new
game=Game.new(board,player)
puts board.show
board.put(player,(gets.chomp).to_i)
puts board.b_opts
puts board.show



