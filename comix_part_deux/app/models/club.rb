class Club < ApplicationRecord
  has_many :shows
  has_many :comedians, through: :shows
  
end
