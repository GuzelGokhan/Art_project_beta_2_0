class Showroom < ApplicationRecord
  belongs_to :exhibition
  has_many :art_pieces, dependent: :destroy
end
