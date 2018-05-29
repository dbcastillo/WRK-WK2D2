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
            print @board.grid[i][j].to_s.colorize(:color => :light_blue, :background => :red)
          else
            print @board.grid[i][j]
          end
        end
        print "\n"
      end
    end
  
  end
  
end 


b = Board.new
d = Display.new(b)
d.render