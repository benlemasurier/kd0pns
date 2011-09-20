class SessionsController < ApplicationController
  def create
    session[:password] = params[:password]
    flash[:notice] = 'Successfully logged in'
    redirect_to root_path
  end

  def destroy
    reset_session
    flash[:notice] = 'Succesfully logged out'
    redirect_to root_path
  end
end
