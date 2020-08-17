class Exhibition < ApplicationRecord
  belongs_to :galery
  belongs_to :user
  has_many :showrooms, dependent: :destroy
  has_many :art_pieces, dependent: :destroy
  has_one_attached :photo
end
