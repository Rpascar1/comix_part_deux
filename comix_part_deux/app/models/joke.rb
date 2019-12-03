class Joke < ApplicationRecord
  validates :topic, presence: true
  validates :punchline, presence: true
  validates :body, presence: true

  belongs_to :comedian
end
