# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer # :nodoc:
  attributes :id, :name, :done

  belongs_to :todo
end
