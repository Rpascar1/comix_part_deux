class Show < ApplicationRecord
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  belongs_to :comedian
  belongs_to :club

end
