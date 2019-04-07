class ApplicationController < ActionController::Base
  helper_method :current_admin

  def authenticate!
    redirect_to root_path unless current_admin
  end

  def current_admin
    if session[:admin_id]
      @current_admin ||= Admin.find(session[:admin_id])
    else
      @current_admin = nil
    end
  end
end
