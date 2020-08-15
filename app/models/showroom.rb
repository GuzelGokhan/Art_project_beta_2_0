class Showroom < ApplicationRecord
  belongs_to :exhibition
  has_many :art_pieces, :through => :exhibitions
end
