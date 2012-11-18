class CreateRetailers < ActiveRecord::Migration
	def up 
    	create_table :retailers do |t|
        	t.string :name
        	t.string :website_url
	        t.text :description

    	    t.timestamps
      	end
    end
	
	def down
		drop_table :retailers
	end

end
