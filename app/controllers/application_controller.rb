class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?



  def authenticate_user
    if !logged_in?
      flash[:notice] = 'You must be logged in to view this'
      redirect_to new_session_path
    end
  end

  def logged_in?
    !!session[:name]
  end

  def current_user
  	if session[:name]
  		session[:name]
  	else
  		nil
  	end
  end

end

