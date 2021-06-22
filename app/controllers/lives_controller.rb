class LivesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  private
  def lives_params
    params.require(:live).permit( :image).merge(user_id: current_user.id)
  end

end
