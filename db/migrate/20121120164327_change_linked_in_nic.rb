class ChangeLinkedInNic < ActiveRecord::Migration
  def change
    rename_column :users, :linkedin_nic, :linkedin_handle
  end
end
