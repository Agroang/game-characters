class Character < ApplicationRecord
  belongs_to :game
  has_many :gains, dependent: :destroy
  has_many :skills, through: :gains
  validates :name, presence: true
end
