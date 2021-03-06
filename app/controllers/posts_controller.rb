class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
    unless current_user.id == @post.user_id
      redirect_to action: :index
    end
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:first_half_score, :second_half_score, :total_score, :golf_course, :date, :image).merge(user_id: current_user.id)
  end

end
