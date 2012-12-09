class RenameLinkedinAttrs < ActiveRecord::Migration
  def change
    rename_column :users, :linkedin_token, :token
    rename_column :users, :linkedin_id, :uid
    rename_column :users, :linkedin_secret, :secret
    rename_column :users, :linkedin_handle, :handle
    
  end
end
