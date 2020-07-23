# frozen_string_literal: true

class Item < ApplicationRecord # :nodoc:
  belongs_to :todo

  validates :name, presence: true
end
