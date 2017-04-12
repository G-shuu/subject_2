class Picture < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user, optional: true
end
