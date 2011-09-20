class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method [ :admin?, :is_active? ]

  protected

  def is_active?(page_name)
    "active" if params[:action] == page_name
  end

  def authorize
    unless admin?
      flash[:notice] = "Unauthorized access"
      redirect_to root_path
      false
    end
  end

  def admin?
    session[:password] == AUTH["password"]
  end
end
