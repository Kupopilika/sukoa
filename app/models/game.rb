class Game < ApplicationRecord
  has_many :players
  validates :name, presence: true
  validates :goal_score, presence: true
  validates :number, presence: true
end
