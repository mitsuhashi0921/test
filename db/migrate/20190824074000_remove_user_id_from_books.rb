class RemoveUserIdFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :userid, :integer
  end
end
