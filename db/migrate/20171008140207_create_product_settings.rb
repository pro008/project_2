class CreateProductSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :product_settings do |t|
    	t.string :name,			 size: 255
    	t.text :description
    	t.float :price,          default: 0
    	# image
    	t.integer :status,		 default: 0
    	# t.integer :product_settings_id, array: true, default: []
    	t.timestamps
    end
  end
end
