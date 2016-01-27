class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if current_user
      @cards = current_user.cards.sort_by(&:created_at).reverse
      @clients = current_user.followeds
      @client_search = User.search(params[:query])
      @results = User.where(access: 0) || @client_search
      # raise params.inspect
      render 'dashboard'
    end
  end
end
