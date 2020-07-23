# frozen_string_literal: true

class TodoSerializer < ActiveModel::Serializer # :nodoc:
  # include FastJsonapi::ObjectSerializer

  attributes :id, :title, :created_by

  has_many :items
end
