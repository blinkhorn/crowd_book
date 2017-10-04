class Venue < ApplicationRecord
  has_many :requests, dependent: :destroy
  # may want to add has_many :users, through: :requests
  validates :name, presence: true
end
