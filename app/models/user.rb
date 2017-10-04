class User < ApplicationRecord
  # would use devise for users, if for no other reason to protect passwords

  # adding `has_many :venues, through: :requests` will give you a `.venues` method
  # that you can use to retrieve the venues associated with a particular User
  has_many :requests, dependent: :destroy
  validates :username, :name, :password_digest, :email, presence: true
  validates :username, :email, uniqueness: true
end
