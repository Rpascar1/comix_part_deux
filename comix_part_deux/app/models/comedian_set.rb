class ComedianSet < ApplicationRecord
validates :name, presence: true
validates :length, presence: true # string value
  belongs_to :comedian
  has_many :jokes

end
