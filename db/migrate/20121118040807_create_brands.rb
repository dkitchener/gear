class CreateBrands < ActiveRecord::Migration
  def up
    create_table :brands do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  def down
	drop_table :brands
  end
	
  end
end
