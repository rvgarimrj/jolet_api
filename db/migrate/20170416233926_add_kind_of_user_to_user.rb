class AddKindOfUserToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :kind_of_user, :integer, :default => 0
  end
end
