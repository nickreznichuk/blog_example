class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find_by_id(params[:id])
    @comments = @post.comments.all
  end
  def new
    @post = Post.new
  end
  def create
    # render plain: params[:post]
    @user = current_user
    @post = @user.posts.new(post_params)

    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end
  def edit
    @post = Post.find_by_id(params[:id])
  end
  def update
    @post = Post.find_by_id(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category_id, :file)
  end
end
