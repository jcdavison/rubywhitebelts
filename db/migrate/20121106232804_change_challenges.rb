class ChangeChallenges < ActiveRecord::Migration
  def change
    change_column :challenges, :complete, :boolean, :default => false
  end
end
