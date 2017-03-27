class Cocktail < ApplicationRecord
  belongs_to :restaurant
  has_many :ingredients
  has_many :steps
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :steps, reject_if: :all_blank, allow_destroy: true
end
