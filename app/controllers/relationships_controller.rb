
class RelationshipsController < ApplicationController
    before_action :authenticate_user! , only:[:destroy,:create]
 
  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    puts params
    
    if params.has_key?(:relationship)
      redirect_to discovers_path
    else
      redirect_to user_profile_path(@user.id)
    end
  end
 
  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow(@user)
    puts params
    if params.has_key?(:relationship)
      redirect_to discovers_path
    else
      redirect_to user_profile_path(@user.id)
    end
  end
end