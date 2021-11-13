class Character < ApplicationRecord
  belongs_to :game
  has_many :gains
  has_many :skills, through: :gains
  validates :name, presence: true
end
