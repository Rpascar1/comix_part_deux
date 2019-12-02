class Club < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  # validates :address, presence: true
  has_many :shows
  has_many :comedians, through: :shows

end
