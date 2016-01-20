class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if current_user
      @cards = current_user.cards
      render '/users/index'
    end
  end
end
