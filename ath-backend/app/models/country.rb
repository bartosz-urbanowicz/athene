class Country < ApplicationRecord
  has_many :species_rarities
  has_many :species, through: :species_rarities
  has_many :recordings
end
