class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if current_user
      @cards = current_user.cards.sort_by(&:created_at).reverse
      render 'dashboard'
    end
  end
end
