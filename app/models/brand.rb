class Brand < ActiveRecord::Base
	has_many :products
	searchable do
		text :name, :description
	end
	attr_accessible :description, :name
end
