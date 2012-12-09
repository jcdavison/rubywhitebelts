class ChangeLinkedinEmail < ActiveRecord::Migration
  def change
    remove_column :users, :linkedin_email
  end
end
