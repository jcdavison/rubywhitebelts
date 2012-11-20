class AddLinkedinCredentialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linkedin_secret, :string
    add_column :users, :linkedin_token, :string
    add_column :users, :linkedin_id, :string
    add_column :users, :linkedin_nic, :string
    add_column :users, :linkedin_email, :string
  end
end
