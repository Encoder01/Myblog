class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @posts = Post.all
  end
  
  def show
    @categories = Category.all
    @categories = Category.find(params[:id])
  end
end
