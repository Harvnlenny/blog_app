class SessionsController < ApplicationController

  def create
    user = User.authorize_with(request.env["omniauth.auth"])
    if user 
      session[:user_id] = user.id
      redirect_to '/posts'
    else
      redirect_to '/login', :notice => "Fail."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', :notice => "Signed out!"
  end

end