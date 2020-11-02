class PostsController < ApplicationController
  def index
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

  private

  def post_params
    params.require(:post).permit(:first_half_score, :second_half_score, :total_score, :golf_course, :date, :image).merge(user_id: current_user.id)
  end

end
