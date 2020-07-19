class AddUsersForeignKeyToTodos < ActiveRecord::Migration[5.2]
  def change
    add_reference :todos, :user, foreign_key: :created_by
  end
end
