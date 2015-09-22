class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
@post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
