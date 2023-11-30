class Tag < ApplicationRecord
  has_many :tag_potins
  has_many :potins, through: :tag_potins
end
