class Species < ApplicationRecord
  belongs_to :text_content
  belongs_to :order
  belongs_to :family

  has_many :facts
  has_many :species_rarities
  has_many :countries, through: :species_rarities
end
