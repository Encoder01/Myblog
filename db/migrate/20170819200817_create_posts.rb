class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :body_description
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
