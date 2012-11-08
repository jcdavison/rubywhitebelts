class AddWhiteBeltToUser < ActiveRecord::Migration
  def change
    add_column :users, :white_belt, :boolean, :default => false
  end
end
