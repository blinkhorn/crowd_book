class Venue < ApplicationRecord
  has_many :requests, dependent: :destroy
  validates :name, presence: true
end
