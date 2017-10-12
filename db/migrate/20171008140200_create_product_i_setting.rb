class CreateProductISetting < ActiveRecord::Migration[5.1]
  def change
    create_table :product_i_settings do |t|
    	t.integer :product_id
    	t.integer :product_setting_id
    	t.timestamps
    end
  end
end
