class Showroom < ApplicationRecord
  belongs_to :exhibition
  has_one_attached :photo
  has_many :art_pieces, :through => :exhibitions
end
