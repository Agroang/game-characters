class Character < ApplicationRecord
  belongs_to :game
  has_many :gains, dependent: :destroy
  has_many :skills, through: :gains
  has_one_attached :photo
  validates :name, presence: true
end
