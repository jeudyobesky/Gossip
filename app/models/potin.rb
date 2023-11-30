class Potin < ApplicationRecord
  belongs_to :user
  has_many :tag_potins 
  has_many :potins, through: :tag_potins
  has_many :comments
  has_many :likes
end
