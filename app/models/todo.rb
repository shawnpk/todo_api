class Todo < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :title, :created_by, presence: true
end
