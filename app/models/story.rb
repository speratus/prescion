class Story < ApplicationRecord
  belongs_to :user

  has_many :model_tags, as: :model
  has_many :tags, through: :model_tags

  has_one :story_series
  has_one :series, through: :story_series

  validates :title, :slug, :user_id, :unique_id, presence: true

  has_rich_text :content
  has_one_attached :cover_image

  has_many_attached :images

  before_validation :setup_uniqueness

  def generate_unique_id
    rand(65536)
  end

  def generate_slug
    base = self.title.downcase
    sanitized = base.gsub(/\W/, '-')
    id = self.unique_id.to_s(16)
    sanitized + "-#{id}"
  end

  def setup_uniqueness
    self.unique_id = generate_unique_id if self.unique_id == 0
    self.slug = generate_slug
  end
end
