class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :start_date, presence: true
  validates :end_date, presence: true
end
