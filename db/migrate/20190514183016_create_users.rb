class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "name"
      t.string "location"
      t.string "instagram_handle"
      t.integer "follower_count"
      t.string "email"      
      t.timestamps
    end
  end
end
