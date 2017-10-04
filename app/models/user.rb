class User < ApplicationRecord
  # would use devise for users, if for no other reason to protect passwords
  has_many :requests, dependent: :destroy
  validates :username, :name, :password_digest, :email, presence: true
  validates :username, :email, uniqueness: true
end
