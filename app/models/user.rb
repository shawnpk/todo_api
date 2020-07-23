# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  has_many :todos, foreign_key: :created_by

  has_secure_password

  validates :name, :email, :password_digest, presence: true
end
