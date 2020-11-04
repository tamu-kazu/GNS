class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.includes(:user)
    @date = []
     @posts.each do |post| 
    @date << [post.date,post.total_score]
     end
  end
end
