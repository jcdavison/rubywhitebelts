class CreateUsersBeltsJoinTable < ActiveRecord::Migration
  def change
    create_table :users_belts, :id => false do |t|
      t.integer :user_id
      t.integer :project_id
    end
  end
end
