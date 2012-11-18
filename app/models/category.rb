class Category < ActiveRecord::Base
	has_many :children, :class_name => "Category",
    	:foreign_key => "parent_id"
	belongs_to :parent, :class_name => "Category"
	has_many :products
	attr_accessible :description, :name
end
