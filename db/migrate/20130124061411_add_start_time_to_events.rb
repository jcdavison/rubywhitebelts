class AddStartTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time 
  end
end
