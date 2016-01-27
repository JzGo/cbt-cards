module UsersHelper
  def follow_or_unfollow user
    if current_user.followed user
      render partial: 'unfollow', locals: {user: user}
    else
      render partial: 'follow', locals: {user: user}
    end
  end
end
