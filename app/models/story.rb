class Story < ApplicationRecord
  belongs_to :user

  has_many :model_tags, as: :model
  has_many :tags, through: :model_tags

  has_one :story_series
  has_one :series, through: :story_series

  validates :title, :slug, :user_id, :unique_id, presence: true

  has_one_attached :content
  has_one_attached :cover_image

  has_many_attached :images
end
