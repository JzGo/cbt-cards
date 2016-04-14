class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if current_user
      @cards = current_user.cards.sort_by(&:created_at).reverse
      @clients = User.client_feed current_user
      @client_search = User.search(params[:query])
      @results = User.where(access: 0) || @client_search
      render 'dashboard'
    end
  end
end
