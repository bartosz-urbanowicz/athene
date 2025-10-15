class Translation < ApplicationRecord
  belongs_to :text_context
  belongs_to :language
end
