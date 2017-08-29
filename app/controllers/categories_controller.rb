class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    
  end
  
  
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts.paginate(page: params[:page], per_page: 2)
  end
end
