class CreateProducts < ActiveRecord::Migration
	def change
		create_table :products do |t|
      	    t.string :name
	        t.text :description
			t.references :category
			t.references :brand

        	t.timestamps
    	end
	end
end
