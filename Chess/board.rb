require_relative 'piece'


class Board
  def initialize
    @grid = Array.new(8) {Array.new(8)}
  
  end
  
  # def setup
  #   16.times do 
  #   new_piece = Piece.new
  #   @grid[0,0] = new_piece
  # end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos,value)
    row, col = pos
    @grid[row][col] = value
  end
  
end
