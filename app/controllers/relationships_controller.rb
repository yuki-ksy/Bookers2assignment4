class RelationshipsController < ApplicationController
  def follower
    @user = User.find(params[:id])
  end
  def follow
    @user = User.find(params[:id])
  end

  def create
    current_user.follow(params[:id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:id])
    redirect_to request.referer
  end
end
