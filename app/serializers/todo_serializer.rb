class TodoSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer

  attributes :id, :title, :created_by

  has_many :items
end
