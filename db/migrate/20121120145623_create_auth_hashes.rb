class CreateAuthHashes < ActiveRecord::Migration
  def change
    create_table :auth_hashes do |t|
      t.string :auth_hash
      t.integer :user_id

      t.timestamps
    end
  end
end
