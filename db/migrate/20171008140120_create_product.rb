class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.integer :shop_id, null: false
    	t.integer :feedback_id, array: true, default: []
    	t.integer :category_id, array: true, default: []
    	t.integer :parents_id
    	t.timestamps
    end
  end
end
