class AddUserIdToCts < ActiveRecord::Migration
  def change
    add_column :cts, :user_id, :integer
    add_index :cts, :user_id
  end
end
