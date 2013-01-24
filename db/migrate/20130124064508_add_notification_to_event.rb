class AddNotificationToEvent < ActiveRecord::Migration
  def change
    add_column :events, :notification, :string
  end
end
