class AddUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname, default: "", null:false
            
      t.timestamps
    end
    
  end
end
