class Story < ApplicationRecord
  belongs_to :user

  has_many :model_tags, as: :model
  has_many :tags, through: :model_tags

  has_one :story_series
  has_one :series, through: :story_series
end
