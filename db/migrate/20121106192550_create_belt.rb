class CreateBelt < ActiveRecord::Migration
  def change

    create_table :belts do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  
  end
end
