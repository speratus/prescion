class ModelTag < ApplicationRecord
  belongs_to :model, polymorphic: true
  belongs_to :tag
end
