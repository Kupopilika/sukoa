class Game < ApplicationRecord
  has_many :players
  validates :number, numericality: { less_than: 7, more_than: 0 }
end
