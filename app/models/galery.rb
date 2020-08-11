class Galery < ApplicationRecord
  belongs_to :user
  has_many :exhibitions
  has_one_attached :photo
end
