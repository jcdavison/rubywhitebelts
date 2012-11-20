class ChangeProjectIdToBeltId < ActiveRecord::Migration
  def change
    rename_column :users_belts, :project_id, :belt_id
  end
end
