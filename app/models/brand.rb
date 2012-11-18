class Brand < ActiveRecord::Base
	searchable do
		text :name, :description
	end
	attr_accessible :description, :name
end
