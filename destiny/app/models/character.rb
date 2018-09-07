class Character < ApplicationRecord
  has_many :notes

  validates :name, presence: true
  validates :species, presence: true
  validates :planet_origin, presence: true
end
