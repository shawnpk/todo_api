# frozen_string_literal: true

class AddUsersForeignKeyToTodos < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    add_reference :todos, :user, foreign_key: :created_by
  end
end
