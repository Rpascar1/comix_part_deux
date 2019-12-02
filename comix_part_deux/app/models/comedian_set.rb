class ComedianSet < ApplicationRecord
  belongs_to :comedian
  has_many :jokes
  
end
