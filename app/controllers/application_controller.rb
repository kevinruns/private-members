class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_login
    unless Current.user
      flash[:alert] = "You must be logged in to access this section"
      redirect_to sign_in_path # halts request cycle
    end
  end


end
