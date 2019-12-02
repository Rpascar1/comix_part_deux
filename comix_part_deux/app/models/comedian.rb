class Comedian < ApplicationRecord
  has_many :comedian_sets
  has_many :jokes, through: :comedian_sets
  has_many :shows
  has_many :clubs, through: :shows

end
