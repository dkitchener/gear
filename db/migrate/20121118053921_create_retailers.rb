class CreateRetailers < ActiveRecord::Migration
	def change
    	create_table :retailers do |t|
        	t.string :name
        	t.string :website_url
	        t.text :description

    	    t.timestamps
      	end
    end
end
