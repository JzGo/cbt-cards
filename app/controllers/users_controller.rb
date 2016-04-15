class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @cards = @user.cards.sort_by(&:created_at).reverse
    @goal = @user.goal
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :password, :current_password, :password_confirmation)
  end
end
