class ArtPiece < ApplicationRecord
  belongs_to :showroom
  belongs_to :exhibition
  belongs_to :user
  has_one_attached :photo
end
