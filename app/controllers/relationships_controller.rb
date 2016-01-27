class RelationshipsController < ApplicationController

  def create
    Relationship.create(relationship_params)
  end


  private

  def relationship_params
    params.require(:relationship).permit(:followed_id, :follower_id)
  end

end
