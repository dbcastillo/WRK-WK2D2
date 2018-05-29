require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display
  
  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end 
  
  def render
    until false
    
      pos = @cursor.get_input
    
      @board.grid.each_index do |i|
        @board.grid.each_index do |j|
          if [i, j] == pos
            puts @board.grid[i][j].to_s.colorize(:blue)
          else
            puts @board.grid[i][j]
          end
        end
      end
    end
  
  end
  
end 