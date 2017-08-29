class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = if params[:search]
               Post.where('body LIKE ?', "%#{params[:search]}%").paginate(page: params[:page], per_page: 3)
             else
               @posts = Post.order(:title).paginate(page: params[:page], per_page: 3)
             end
    
    category_find
  end
  
  def show
    category_find
    @posts = Post.all
    @post = Post.find(params[:id])
    @post.reads_counter = @post.reads_counter+1
    @post.update(reads_count)
    end

  def new
    @post = Post.new
    category_find
  end


  def edit
    category_find
  end

  def create
    @post = Post.new(post_params)
    category_find
   
      if @post.save
        @post.reads_counter = 0
         redirect_to @post, notice: 'Konu başarıyla oluşturuldu'
      else
        render :new
      end
    end
  
  
  def update
    category_find
      if @post.update(post_params)
         redirect_to @post, notice: 'Post was successfully updated.'
     
      else
        render :edit
      end
    end
  
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

  private
    
      def category_find
        @categories = Category.all
      end
  
    def set_post
      @post = Post.find(params[:id])
    end
def reads_count
  params.permit(:reads_counter)
end
    def post_params
      params.require(:post).permit(:title,:body,:body_description,:description_image,:admin_user_id,:category_id,:reads_counter,:search)
    end
end
