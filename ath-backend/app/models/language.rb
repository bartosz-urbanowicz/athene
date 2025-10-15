class Language < ApplicationRecord
  has_many :text_contents
  has_many :translations
end
