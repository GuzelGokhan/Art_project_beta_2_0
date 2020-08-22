class Showroom < ApplicationRecord
  belongs_to :exhibition
  has_many :art_pieces, :through => :exhibition
  BACKGROUNDS =["showroom_1_piece.jpg","showroom_3_piece.jpg","showroom_5_piece.jpg"]
end
