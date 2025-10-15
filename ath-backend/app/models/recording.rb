class Recording < ApplicationRecord
  belongs_to :license
  belongs_to :country

  enum :quality, {
    low: "low",
    medium: "medium",
    high: "high"
  }
end
