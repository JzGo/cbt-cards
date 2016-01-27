class RelationshipsController < ApplicationController

  def create

  end


  private

  def relationship_params
    params.require(:relationship).permit(:followed_id, :follower_id)
  end

end
