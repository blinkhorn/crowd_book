class Request < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  validates :name, presence: true
  validates :name, :soundcloud, :facebook, uniqueness: { case_sensitive: false }
end
