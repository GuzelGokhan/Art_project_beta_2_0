class Exhibition < ApplicationRecord
  belongs_to :galery
  has_many :showrooms
end
