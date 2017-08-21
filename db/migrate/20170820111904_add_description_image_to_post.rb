class AddDescriptionImageToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :description_image, :string
  end
end
