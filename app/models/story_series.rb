class StorySeries < ApplicationRecord
  belongs_to :story
  belongs_to :series
  
  validates :story_id, unique: true
end
