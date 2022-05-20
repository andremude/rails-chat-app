class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in(user)
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end

# def create
#   @user = User.find_by(username: params[:username])
#   if @user & @user.authenticate(params[:password])
#     session[:user_id] = @user.id
#     log_in(@user)
#   else
#     render 'new'
#   end
# end
