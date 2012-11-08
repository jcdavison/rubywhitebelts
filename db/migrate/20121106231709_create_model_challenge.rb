class CreateModelChallenge < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :description
      t.boolean :complete
      t.timestamps
    end
  end
end
