class User < ApplicationRecord
  has_many :todos

  validates :name, :email, :password_digest, presence: true
end
