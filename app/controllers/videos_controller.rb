class VideosController < ApplicationController
def index
  @videos = Video.where(user_id:params[:user_id])
end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.save
    redirect_to action: :index
  end

  def show
    #@video = Video.find(params[:id])
  end

  private

  def video_params
    params.require(:video).permit(:introduction, :video).merge(user_id: current_user.id)
  end
end
