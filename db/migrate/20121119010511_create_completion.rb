class CreateCompletion < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :user_id
      t.string :belt
      t.string :description
      t.timestamps
    end
  end
end
