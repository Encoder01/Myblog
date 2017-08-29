class Post < ApplicationRecord
  belongs_to :admin_user
  belongs_to :category , counter_cache: true
  validates :admin_user_id, presence: true
  validates :category_id, presence: true
  attribute :reads_counter, :integer, default: 0
  mount_uploader :description_image ,ImageUploader
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("body LIKE ?", "%#{search}%")
  end

  def previous
    Post.where(["id < ?", id]).last
  end

  def next
    Post.where(["id > ?", id]).first
  end
end
