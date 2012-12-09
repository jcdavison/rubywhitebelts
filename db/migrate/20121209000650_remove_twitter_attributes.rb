class RemoveTwitterAttributes < ActiveRecord::Migration
  def change
    remove_column :users, :twitter_token
    remove_column :users, :twitter_secret
    remove_column :users, :twitter_id
    remove_column :users, :twitter_handle
  end
end
