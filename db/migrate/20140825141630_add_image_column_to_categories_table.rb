class AddImageColumnToCategoriesTable < ActiveRecord::Migration
  def change
  	add_column :categories, :cat_image_url, :string
  end
end
