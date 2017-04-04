class AddCompletedAtToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :completed_at, :timestamp
    add_index :todos, :completed_at
  end
end
