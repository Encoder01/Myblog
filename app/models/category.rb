class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name , presence: true, uniqueness: true
  
  def to_param
    name
  end
end
