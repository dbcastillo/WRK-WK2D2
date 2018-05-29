require 'colorize'
require 'cursor.rb'
require 'board.rb'

class Display
  
  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end 
  
end 