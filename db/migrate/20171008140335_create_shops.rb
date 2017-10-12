class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
    	 t.string :name
    	 t.text :description
    	 t.integer :shop_profile_ids, array: true, default: []
    	 t.timestamps
    end
  end
end
