require_relative 'piece'


class Board
  
  class NoPieceError < StandardError; end
  class OccupiedError < StandardError; end
  class NotOnBoardError < StandardError; end
  
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    @new_piece = Piece.new
    setup
  end
  
  def setup
    @grid[0][0] = @new_piece
    @grid[0][1] = @new_piece
    @grid[0][2] = @new_piece
    @grid[0][3] = @new_piece
    @grid[0][4] = @new_piece
    @grid[0][5] = @new_piece
    @grid[0][6] = @new_piece
    @grid[0][7] = @new_piece
    
    @grid[1][0] = @new_piece
    @grid[1][1] = @new_piece
    @grid[1][2] = @new_piece
    @grid[1][3] = @new_piece
    @grid[1][4] = @new_piece
    @grid[1][5] = @new_piece
    @grid[1][6] = @new_piece
    @grid[1][7] = @new_piece
    
    @grid[7][0] = @new_piece
    @grid[7][1] = @new_piece
    @grid[7][2] = @new_piece
    @grid[7][3] = @new_piece
    @grid[7][4] = @new_piece
    @grid[7][5] = @new_piece
    @grid[7][6] = @new_piece
    @grid[7][7] = @new_piece
    
    @grid[6][0] = @new_piece
    @grid[6][1] = @new_piece
    @grid[6][2] = @new_piece
    @grid[6][3] = @new_piece
    @grid[6][4] = @new_piece
    @grid[6][5] = @new_piece
    @grid[6][6] = @new_piece
    @grid[6][7] = @new_piece
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos,value)
    row, col = pos
    @grid[row][col] = value
  end
  
  def move_piece(start_pos, end_pos)
    begin
      if self[start_pos].nil?
        raise NoPieceError
      elsif self[end_pos].is_a?(Piece)
        raise OccupiedError
      elsif self[start_pos].nil? || self[end_pos].nil?
        raise NotOnBoardError
      end 
    rescue NoPieceError
      puts "There is no piece at this position."
    rescue OccupiedError
      puts "That position is occupied."
    rescue NotOnBoardError
      puts "that position is not on the board."
    end
    
    self[end_pos] = self[start_pos]
    self[start_pos] = nil
    
  end 
  
  def valid_pos?(pos)
    if pos[0].between?(0,7) && pos[1].between?(0,7) && self[pos] != nil 
      return true
    end
      false
    end
  
end
