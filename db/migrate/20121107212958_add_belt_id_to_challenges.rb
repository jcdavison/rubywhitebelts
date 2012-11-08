class AddBeltIdToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :belt_id, :integer
  end
end
