class Game < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :release_date, presence: true
end
