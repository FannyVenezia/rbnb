class Review < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :title, presence: true
  validates :rating, presence: true
end
