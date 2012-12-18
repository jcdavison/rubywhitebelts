class AddBeltIdCompletion < ActiveRecord::Migration
  def change
    add_column :completions, :belt_id, :integer
  end
end
