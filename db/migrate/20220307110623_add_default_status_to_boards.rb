class AddDefaultStatusToBoards < ActiveRecord::Migration[7.0]
  def change
    remove_column :boards, :is_completed, :boolean
    remove_column :boards, :is_editing, :boolean
  end
end
