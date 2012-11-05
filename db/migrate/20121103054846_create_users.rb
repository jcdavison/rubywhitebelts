class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :twitter_token
      t.string :twitter_secret
      t.string :twitter_id
      t.string :twitter_handle

      t.timestamps
    end
  end
end
