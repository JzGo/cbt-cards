class UsersController < ApplicationController

  def index
    @cards = current_user.cards
    @recent = @cards.sorted_by(&created_at).reverse.limit(5)
  end
end
