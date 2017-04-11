class Picture < ApplicationRecord
  validates :title, :content, presence: true
end
