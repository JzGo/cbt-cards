class GoalsController < ApplicationController

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to (:back)
    else
      redirect_to (:back)
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:user_id, :card_count, :start_date, :end_date)
  end
end
