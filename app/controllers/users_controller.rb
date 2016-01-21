class UsersController < ApplicationController

  def index
    @cards = current_user.cards
    @recent = @cards.sorted_by(&created_at).reverse.limit(5)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :password, :current_password, :password_confirmation)
end
