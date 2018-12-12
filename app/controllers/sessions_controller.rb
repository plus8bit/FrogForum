class SessionsController < ApplicationController

  def new
    user = User.create_or_update(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def sign_out
    session.delete(:user_id)
    redirect_to root_path
  end

end