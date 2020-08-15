class ArtPiece < ApplicationRecord
  belongs_to :exhibition
  belongs_to :user
  delegate :showroom, :to => :exhibition, :allow_nil => true
  has_one_attached :photo
end
