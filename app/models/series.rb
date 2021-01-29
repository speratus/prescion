class Series < ApplicationRecord
  belongs_to :user

  has_many :model_tags, as: :model
  has_many :tags, through: :model_tags

  has_many :story_series
  has_many :stories, through: :story_series
end
