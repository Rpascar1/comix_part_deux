class Comedian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :comedian_sets
         has_many :jokes, through: :comedian_sets
         has_many :shows
         has_many :clubs, through: :shows
end
