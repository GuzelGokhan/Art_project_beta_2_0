class Galery < ApplicationRecord
  belongs_to :user
  has_many :exhibitions, dependent: :destroy
  has_one_attached :photo
end
