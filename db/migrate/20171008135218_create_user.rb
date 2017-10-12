class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :email, null: false, default: ""
    	t.string :password
    	t.string :fb_id
    	t.string :gg_id
    	t.string :username
    	t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
