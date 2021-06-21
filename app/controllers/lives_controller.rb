class LivesController < ApplicationController
  def index
    
  end

  private

  def live_params
    params.require(:user).permit(:image,:nickname,:birthday,:image, :image_cache, :remove_image).merge(user_id: current_user.id, image: current_user.image)
  end
end
