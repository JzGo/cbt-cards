class RelationshipsController < ApplicationController

  def create
    Relationship.create(relationship_params)
    redirect_to :back
  end

  def destroy
    target = Relationship.find_by(relationship_params)
    if target
      target.destroy
      redirect_to :back
    else
      flash[:error] = "Relationship does not exist"
      redirect_to :back
    end
  end

  private

  def relationship_params
    params.require(:relationship).permit(:followed_id, :follower_id)
  end

end
