class AddChallengeIdCompletion < ActiveRecord::Migration
  def change
    add_column :completions, :challenge_id, :integer
  end
end
