class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :body_description
      t.text :description_image
      t.references :admin_user, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :reads_counter
      t.string :permalink

      t.timestamps
    end
  end
end
