class User < ApplicationRecord
  has_many :requests, dependent: :destroy
  validates :username, :name, :password_digest, :email, presence: true
  validates :username, :email, uniqueness: true
end
