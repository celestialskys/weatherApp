class AddUserLocationJoin < ActiveRecord::Migration[8.0]
  def change
    create_table :user_locations do |t|
    t.integer :user_id
    t.integer :location_id
    end
  end
end
