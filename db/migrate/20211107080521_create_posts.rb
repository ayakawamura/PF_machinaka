class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :body, null: false
      t.string :address
      t.float :atitude
      t.float :longitude

      t.timestamps
    end
  end
end
