class AddProfileImageToProfiles < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :profileimage, :string
  end
end
