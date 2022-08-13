class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :detail
      t.boolean :is_editing
      t.boolean :is_completed

      t.timestamps
    end
  end
end
