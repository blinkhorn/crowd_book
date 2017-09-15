class Venue < ApplicationRecord
  has_many :requests, dependent: :destroy
end
