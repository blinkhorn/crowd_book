class Request < ApplicationRecord
  # See comments in user.rb and venue.rb
  belongs_to :user
  belongs_to :venue
  validates :name, presence: true # should definitely validate venue_id, in case the user accidentally doesn't make a choice in the venue dropdown in the form for creating a new request
  validates :name, :soundcloud, :facebook, uniqueness: { case_sensitive: false } #potentially you may not want to validate uniqueness of names
end
