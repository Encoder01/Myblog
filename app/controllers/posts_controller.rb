class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order(:title).paginate(page: params[:page], per_page: 2)
    @categories = Category.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @categories = Category.all
  end

  # GET /posts/new
  def new
    @post = Post.new
    @categories = Category.all
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @categories = Category.all
      if @post.save
         redirect_to @post, notice: 'Konu başarıyla oluşturuldu'
     
      else
        render :new
      end
    end
  

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @categories = Category.all
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
  
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title,:body,:body_description,:description_image,:admin_user_id,:categories_id)
    end
end
