class Post < ApplicationRecord
  belongs_to :admin_user
  validates :admin_user_id, presence: true
  
end
