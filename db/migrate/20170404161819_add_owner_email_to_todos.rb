class AddOwnerEmailToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :owner_email, :string, null: false
    add_index :todos, :owner_email
  end
end
