class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    if current_user
      render '/users/index'
    end
  end
end
