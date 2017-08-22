class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order(:title).paginate(page: params[:page], per_page: 2)
    category_find
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    category_find
  end

  # GET /posts/new
  def new
    @post = Post.new
    category_find
  end

  # GET /posts/1/edit
  def edit
    category_find
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    category_find
   
      if @post.save
        @post.category_id = category_id
         redirect_to @post, notice: 'Konu başarıyla oluşturuldu'
      else
        render :new
      end
    end
  

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    category_find
      if @post.update(post_params)
         redirect_to @post, notice: 'Post was successfully updated.'
     
      else
        render :edit
      end
    end
  

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

  private
    # Use callbacks to share common setup or constraints between actions.
  def category_find
    @categories = Category.all
  end
  
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title,:body,:body_description,:description_image,:admin_user_id,:category_id)
    end
end
