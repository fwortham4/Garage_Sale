class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(user_params[:email])
    if @user
      if @user.authenticate(user_params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:session).permit(:email, :password)
  end
end