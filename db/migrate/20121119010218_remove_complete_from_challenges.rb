class RemoveCompleteFromChallenges < ActiveRecord::Migration
  def change
    remove_column :challenges, :complete
  end
end
