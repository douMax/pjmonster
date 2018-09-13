class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]

    if user.present? and user.authenticate params[:password] 
      # login success
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      #login fail
      flash[:error] = "Incorrect Email and/or Password"
      redirect_to login_path
    end
  end

  # log out
  def destroy  
    session[:user_id] = nil
    redirect_to root_path
  end
end
