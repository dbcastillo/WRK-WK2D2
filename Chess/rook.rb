require_relative 'piece'
require_relative 'stepping_piece_module.rb'

class Rook < Piece
  # include SteppingPiece
  def initialize
  
  end
  
  # private
  
  def moves
    @potential_deltas = moves_dif
    start_pos = [2,2]
    all_potential_moves = []
    @potential_deltas.each do |delta|
      all_potential_moves << [(start_pos.first + delta.first), (start_pos.last + delta.last) ]
    end
    
    all_potential_moves
    
    
    

  end 



  def moves_dif
    potential_deltas = [[0,1], [0, -1], [1,1], [-1,1], [-1,-1],[1, -1], [1,0], [-1,0]]
    
  end

  
end


