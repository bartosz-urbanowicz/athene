class SpeciesRarity < ApplicationRecord
  belongs_to :country
  belongs_to :species
end
