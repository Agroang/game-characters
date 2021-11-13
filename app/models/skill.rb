class Skill < ApplicationRecord
  has_many :gains
  has_many :characters, through: :gains
  validates :name, presence: true
end
