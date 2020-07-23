# frozen_string_literal: true

class Todo < ApplicationRecord # :nodoc:
  belongs_to :user, optional: true
  has_many :items, dependent: :destroy

  validates :title, :created_by, presence: true
end
