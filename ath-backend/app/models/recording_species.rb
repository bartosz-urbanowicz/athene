class RecordingSpecies < ApplicationRecord
  belongs_to :recording
  belongs_to :species

  enum :role, { primary: "primary", secondary: "secondary", background: "background" }
end
