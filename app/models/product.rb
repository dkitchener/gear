class Product < ActiveRecord::Base
	belongs_to :brands
	belongs_to :categories 		
	searchable do
		text :name, :description
	end
	attr_accessible :brand_id, :category_id, :description, :name
end
