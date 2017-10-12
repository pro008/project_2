class AddNameToUsersProfile < ActiveRecord::Migration[5.1]
  def change
  	add_column :user_profiles, :first_name, :string
  	add_column :user_profiles, :last_name, :string
  	add_column :user_profiles, :email, :string
  	add_column :user_profiles, :address, :string
  	add_column :user_profiles, :postcode, :integer
  	add_column :user_profiles, :phonenumber, :integer
  	add_column :user_profiles, :id_state, :integer
  	add_column :user_profiles, :created_at, :datetime, null: false
    add_column :user_profiles, :updated_at, :datetime, null: false
  end
end
