class Request < ApplicationRecord
  belongs_to :user
  has_many :venues#, dependent: :destroy
  validates :name, presence: true
end
