class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if user_signed_in?
      render '/users/index'
    end
  end
end
