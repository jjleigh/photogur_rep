class AddUserIdAndPictureIdToCommentsTable < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :integer
  	add_column :comments, :picture_id, :integer
  end
end
