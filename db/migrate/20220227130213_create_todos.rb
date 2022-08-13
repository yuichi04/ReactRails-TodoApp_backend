class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.text :content
      t.text :detail
      t.boolean :is_completed, default: false, null: false
      t.boolean :is_editing, default: false, null: false
      t.integer :board_id

      t.timestamps
    end
  end
end
