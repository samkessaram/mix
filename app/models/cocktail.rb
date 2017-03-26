class Cocktail < ApplicationRecord
  belongs_to :restaurant
  has_many :ingredients
  has_many :steps
end
