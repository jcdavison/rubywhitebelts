class AddUserIdToBelts < ActiveRecord::Migration
  def change
    add_column :belts, :user_id, :integer
  end
end
