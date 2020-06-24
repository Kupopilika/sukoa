class Game < ApplicationRecord
  has_many :players
  validates :name, presence: true
  validates :goal_score, presence: true
  validates :number, presence: true
  validates :goal_score, numericality: { greater_than: 0 }
end
