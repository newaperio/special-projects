class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.text :body
      t.integer :todo_list_id
      t.timestamps
    end
  end
end
