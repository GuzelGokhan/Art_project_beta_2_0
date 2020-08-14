class Exhibition < ApplicationRecord
  belongs_to :galery
  has_many :showrooms, dependent: :destroy
  has_many :art_pieces, dependent: :destroy
end
