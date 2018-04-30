class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  has_many :participants
  has_many :users, through: :participants
end
