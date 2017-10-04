class Venue < ApplicationRecord
  has_many :requests, dependent: :destroy

  # Regarding your comment about reworking your ERD-- you don't need to add
  # foreign keys on venues and users to associate them, you can do this through
  # your existing join model, Requests

  # adding `has_many :users, through: :requests` will give you a `.users` method
  # that you can use to retrieve a specific Venue's users

  # you may not want dependent: :destroy, though if you want to keep a record of
  # requests, which could useful 'historical' data
  validates :name, presence: true
end
