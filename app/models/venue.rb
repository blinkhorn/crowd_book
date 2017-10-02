class Venue < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :users#, dependent: :destroy
  validates :name, presence: true
end
