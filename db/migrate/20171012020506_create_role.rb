class CreateRole < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
    	t.string :position
    	t.integer :status,		 default: 0
    	t.timestamps
    end
  end
end
