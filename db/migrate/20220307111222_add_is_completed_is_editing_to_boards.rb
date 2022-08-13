class AddIsCompletedIsEditingToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :is_completed, :boolean, default: false, null:false
    add_column :boards, :is_editing, :boolean, default: false, null: false
  end
end
