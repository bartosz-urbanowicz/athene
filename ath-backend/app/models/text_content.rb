class TextContent < ApplicationRecord
  belongs_to :language
  has_many :translations
  has_one :order
  has_one :family
  has_one :fact
  has_one :species
end
