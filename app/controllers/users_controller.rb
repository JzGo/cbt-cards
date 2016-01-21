class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :password, :current_password, :password_confirmation)
  end
end
