class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
    if session[:login_id].nil?
      redirect_to new_session_url, notice: "Please Login"
    else
      @user = User.find(session[:login_id])
    end
  end

  
end
