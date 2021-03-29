class AddAvatarToBoard < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :avatar, :string
  end
end
