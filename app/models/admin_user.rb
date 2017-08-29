class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  require 'kaminari'
  has_many :posts
  has_many :categories
  
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
