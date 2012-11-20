class ChangeTableNameUsersBelts < ActiveRecord::Migration
  def change
    rename_table :users_belts, :belts_users
  end
end
