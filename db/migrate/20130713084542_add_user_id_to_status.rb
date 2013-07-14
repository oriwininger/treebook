class AddUserIdToStatus < ActiveRecord::Migration
  def change
  	add_column :statuses, :user_id, :integer
  	remove_column :statuses, :name
  end
end
