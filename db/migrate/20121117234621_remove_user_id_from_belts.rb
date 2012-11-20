class RemoveUserIdFromBelts < ActiveRecord::Migration
  def change
    remove_column :belts, :user_id
  end
end
