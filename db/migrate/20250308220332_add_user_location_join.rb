class AddUserLocationJoin < ActiveRecord::Migration[8.0]
  def change
    create_table :user_locations do |t|
    t.add_reference :user, foreign_key: true, index: true
    t.add_reference :location, foreign_key: true, index: true
    t.boolean :is_default, default: false, null: false
    end
  end
end
