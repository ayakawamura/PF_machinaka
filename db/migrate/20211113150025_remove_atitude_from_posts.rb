class RemoveAtitudeFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :atitude, :float
  end
end
