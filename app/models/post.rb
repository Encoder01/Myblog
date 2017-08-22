class Post < ApplicationRecord
  belongs_to :admin_user
  belongs_to :category
  validates :admin_user_id, presence: true
  validates :category_id, presence: true
  
end
