class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.includes(:user)
    @data = []
    @posts.each do |post|
      @data << [post.date,post.total_score]
    end
  end
end
