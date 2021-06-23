class LivesController < ApplicationController
  def index
  end

  def new
    @live = Live.new
  end

  def create
    @live = Live.new(live_params)
    if @live.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  private
  def live_params
    params.require(:live).permit(:image, :title, :category_id, :atmosphere_id).merge(user_id: current_user.id)
  end

end
