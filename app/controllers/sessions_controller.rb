class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user and @user.authenticate(params[:password])

      session[:user_id] = @user.id
      redirect_to cats_path
    else
      render :new
    end

    # @user = User.find_by(username: params[:username]).
    # try(:authenticate, params[:username])
    # if @user
    #   session[:user_id] = @user.id
    # else
    #   render :new
    # end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
