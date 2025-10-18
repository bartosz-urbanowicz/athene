class Species < ApplicationRecord
  belongs_to :text_content
  belongs_to :order
  belongs_to :family

  has_many :recording_species, dependent: :destroy, class_name: "RecordingSpecies"
  has_many :recordings, through: :recording_species

  has_many :facts
  has_many :species_rarities
  has_many :countries, through: :species_rarities
end
