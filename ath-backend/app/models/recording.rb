class Recording < ApplicationRecord
  belongs_to :license
  belongs_to :country
  belongs_to :gender
  belongs_to :age
  belongs_to :call_type

  has_many :recording_species, dependent: :destroy, class_name: "RecordingSpecies"
  has_many :species, through: :recording_species

  has_one_attached :sound
  has_one_attached :spectrogram

  enum :quality, {
    low: "low",
    medium: "medium",
    high: "high"
  }
end
